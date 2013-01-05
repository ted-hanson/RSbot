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
		return Players.getLocal() != null && SceneEntities.getNearest(Variables.bankers) == null && (Players.getLocal().getHpPercent() < 100 || Inventory.getCount() > 1 || NPCs.getNearest(Variables.vyres) == null);
	}

	@Override
	public void execute() {
		System.out.println("Teleporting");
		Item ring = Inventory.getItem(Variables.teleportFilter);
		if (ring != null && ring.getWidgetChild().interact("Teleport")) {
			sleep(2000);
			try {
				ChatOptions.getOptions("Burgh de Rott").get(0).select(true, 500);
			} catch(Exception e){
				
			}
		}
		sleep(3000);
	}

}
