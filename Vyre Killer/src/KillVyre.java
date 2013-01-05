import org.powerbot.core.script.job.state.Node; 
import org.powerbot.game.api.methods.Walking;
import org.powerbot.game.api.methods.interactive.NPCs;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.GroundItems;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.methods.widget.Camera;
import org.powerbot.game.api.util.Random;
import org.powerbot.game.api.wrappers.interactive.NPC;
import org.powerbot.game.api.wrappers.node.GroundItem;

public class KillVyre extends Node {
	@Override
	public boolean activate() {
		System.out.println("Testing Whether Can Kill Vyres");
		return Players.getLocal() != null && !Inventory.isFull() && NPCs.getNearest(Variables.vyres) != null;
	}

	@Override
	public void execute() {
		System.out.println("Killing Vyres");
		GroundItem corpse = null;
		NPC vyre = null;
		while (!Inventory.isFull() && Players.getLocal().getHpPercent() > Random.nextInt(20, 40) && Players.getLocal() != null) {
			if (!Players.getLocal().isInCombat()) vyre = NPCs.getNearest(Variables.vyreFilter);
			Walking.walk(vyre);
			Camera.turnTo(vyre);
			sleep(1000);
			vyre.interact("Attack");
			int i = 0;
			while (Players.getLocal().isInCombat() && GroundItems.getNearest(Variables.corpses) == null && i < 1000) {
				Camera.turnTo(vyre);
				i++;
			}
			i = 0;
			do {
				i++;
				corpse = GroundItems.getNearest(Variables.corpses);
				sleep(200);
			} while (corpse == null && i < 10);
			try {
				corpse.interact("Take");
			} catch (Exception e) {
				
			}
			sleep(1000);
		}
	}

}
