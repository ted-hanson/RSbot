import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.SceneEntities;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.methods.widget.Camera;
import org.powerbot.game.api.wrappers.Tile;
import org.powerbot.game.api.wrappers.node.SceneObject;

public class ClickFairy extends Node {
	@Override
	public boolean activate() {
		System.out.println("Testing Click Fairy");
		return Players.getLocal() != null && Inventory.getCount() == 1 && SceneEntities.getNearest(Variables.fairyRings[0]) != null;
	}
	
	@Override
	public void execute() {
		//Walking.walk(new Tile());
		try {
			System.out.println("Clicking Fairy Ring 1");
			SceneObject fairyRing = SceneEntities.getNearest(Variables.fairyRings[0]);
			Camera.setNorth();
			fairyRing.interact("Use");
		} catch (Exception e) {
			System.out.println("Fairy ring is null now");
		}
		sleep(10000);
	}
}
