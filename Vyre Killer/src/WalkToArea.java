import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.Walking;
import org.powerbot.game.api.methods.Widgets;
import org.powerbot.game.api.methods.input.Mouse;
import org.powerbot.game.api.methods.interactive.NPCs;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.SceneEntities;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.util.Random;
import org.powerbot.game.api.util.Timer;
import org.powerbot.game.api.wrappers.Tile;
import org.powerbot.game.api.wrappers.node.SceneObject;
import org.powerbot.game.api.wrappers.widget.WidgetChild;

public class WalkToArea extends Node {
	final Tile[] path = {
			new Tile(3509, 3213, 0),
			new Tile(3523, 3215, 0),
			new Tile(3540, 3218, 0)
	};

	@Override
	public boolean activate() {
		System.out.println("Testing Whether to Walk to Area");
		return Players.getLocal() != null && Inventory.getCount() == 1 && NPCs.getNearest(Variables.vyres) == null && SceneEntities.getNearest(Variables.bankers) != null;
	}
	
	@Override
	public void execute() {
		System.out.println("Walking to Area");
		for (Tile t : path) {
			Walking.walk(t);
			sleep(2000);
			while (Players.getLocal().isMoving());
			sleep(500);
		}
		sleep(2000);
	}
}
