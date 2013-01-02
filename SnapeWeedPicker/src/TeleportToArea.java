import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.Widgets;
import org.powerbot.game.api.methods.input.Mouse;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.SceneEntities;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.util.Random;
import org.powerbot.game.api.util.Timer;
import org.powerbot.game.api.wrappers.node.SceneObject;
import org.powerbot.game.api.wrappers.widget.WidgetChild;

public class TeleportToArea extends Node {
	@Override
	public boolean activate() {
		System.out.println("Testing Whether to Fairy Teleport");
		return Players.getLocal() != null && Inventory.getCount() == 1 && SceneEntities.getNearest(Variables.fairyRings[1]) != null;
	}
	
	@Override
	public void execute() {
		sleep(2000);
		System.out.println("Teleporting to Area");
		int i = 0;
		while(!teleportFairyRing("ckr") && i < 1000) {
			++i;
		}
	}
	
	public static boolean teleportFairyRing(String loc) {
		if (!Widgets.get(735, 13).validate()) {
			SceneObject ring = SceneEntities.getNearest(Variables.fairyRings[1]);
			if (ring != null) {
				if (ring.interact("Use")) waitFor(new WaitCondition() { public boolean isValid() {
					return Widgets.get(735, 13).validate();
				}},Random.nextGaussian(2000, 3000, 1));
			}
			return false;
		}
		WidgetChild child = null;
		double childCount = Widgets.get(735, 13).getChildren().length;
		for (WidgetChild c : Widgets.get(735, 13).getChildren()) {
			if (c.getText().replace(" ", "").toLowerCase().equals(loc.toLowerCase())) {
				child = c;
			}
		}
		if (child != null) {
			if (child.getAbsoluteY() < 280 || child.getAbsoluteY() > 485) {
				Mouse.click(719 + Random.nextGaussian(0, 12, 1), (int) (320 + 160 * ((child.getIndex() + 1) / childCount)), true);
				return false;
			}
			else if (child.click(true)) {
				if (Widgets.get(734, 21).click(true)) {
					if (waitFor(new WaitCondition() { public boolean isValid() {
						return Players.getLocal().getAnimation() != -1;
					}},Random.nextGaussian(2000, 3000, 1))) {
						if (waitFor(new WaitCondition() { public boolean isValid() {
							return Players.getLocal().getAnimation() == -1;
						}},Random.nextGaussian(5000, 7000, 1))) return true;
					}
				}
			}
		}
		int turns1 = loc.charAt(0) - 'a', turns2 = loc.charAt(1) - 'j', turns3 = loc.charAt(2) - 'q';
		if (turns1 > 0) {
			Widgets.get(734, turns1 == 3 ? 23 : 24).click(true);
			sleep(100, 150);
			if (turns1 == 2) Widgets.get(734, 24).click(true);
			sleep(50, 100);
		}
		if (turns2 > 0) {
			Widgets.get(734, turns2 == 3 ? 25 : 26).click(true);
			sleep(100, 150);
			if (turns2 == 2) Widgets.get(734, 26).click(true);
			sleep(50, 100);
		}
		if (turns3 > 0) {
			Widgets.get(734, turns3 == 3 ? 27 : 28).click(true);
			sleep(100, 150);
			if (turns3 == 2) Widgets.get(734, 28).click(true);
			sleep(50, 100);
		}
		if (Widgets.get(734, 21).click(true)) {
			if (waitFor(new WaitCondition() { public boolean isValid() {
				return Players.getLocal().getAnimation() != -1;
			}},Random.nextGaussian(4000, 5000, 1))) {
				if (waitFor(new WaitCondition() { public boolean isValid() {
					return Players.getLocal().getAnimation() == -1;
				}},Random.nextGaussian(5000, 7000, 1))) return true;
			}
		}
		Widgets.get(734, 19).click(true);
		return true;
	}



	public static abstract interface WaitCondition {
        public boolean isValid();
	}
	public static boolean waitFor(final WaitCondition condition, final long timeOut) {
		Timer timer = new Timer(timeOut);
		while (timer.isRunning()) {
			if (condition.isValid()) return true;
		}
		return false;
	}
}
