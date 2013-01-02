import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.Widgets;
import org.powerbot.game.api.methods.interactive.NPCs;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.tab.Inventory;

public class Banking extends Node {
	@Override
	public boolean activate() {
		System.out.println("Testing Banking");
		return Players.getLocal() != null && Inventory.getCount() > 1 && NPCs.getNearest(Variables.bankerFilter) != null;
	}

	@Override
	public void execute() {
		System.out.println("Banking");
		while (!Bank.open()) {
			if (isBankPinOpen()) {
				Widgets.get(13, 1 + 6).click(true);
				sleep(750, 1200);
				Widgets.get(13, 1 + 6).click(true);
				sleep(750, 1200);
				Widgets.get(13, 0 + 6).click(true);
				sleep(750, 1200);
				Widgets.get(13, 0 + 6).click(true);
				sleep(750, 1200);
			}
			Bank.close();
		}
		Bank.depositAllExcept(Variables.rings);
		Bank.close();
	}
	
	public boolean isBankPinOpen() {
		return Widgets.get(13).validate() && Widgets.get(13) != null;
	}

}
