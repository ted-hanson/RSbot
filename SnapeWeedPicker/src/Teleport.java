import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.interactive.NPCs;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.SceneEntities;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.methods.widget.ChatOptions;
import org.powerbot.game.api.wrappers.node.Item;


public class Teleport extends Node {

	@Override
	public boolean activate() {
		System.out.println("Testing Teleport");
		return Players.getLocal() != null && (Inventory.isFull() || SceneEntities.getNearest(Variables.plants) == null) && SceneEntities.getNearest(Variables.fairyRings[1]) == null && NPCs.getNearest(Variables.bankerFilter) == null;
	}

	@Override
	public void execute() {
		System.out.println("Teleporting");
		Item ring = Inventory.getItem(Variables.ringFilter);
		if (ring != null && ring.getWidgetChild().interact("Teleport")) {
			sleep(2000);
			try {
				ChatOptions.getOptions("Fight Caves").get(0).select(true, 500);
			} catch(Exception e){
				
			}
		}
		sleep(3000);
	}

}
