import org.powerbot.core.script.job.state.Node;
import org.powerbot.game.api.methods.interactive.Players;
import org.powerbot.game.api.methods.node.SceneEntities;
import org.powerbot.game.api.methods.tab.Inventory;
import org.powerbot.game.api.methods.widget.Camera;
import org.powerbot.game.api.methods.widget.ChatOptions;
import org.powerbot.game.api.util.Random;
import org.powerbot.game.api.wrappers.node.Item;
import org.powerbot.game.api.wrappers.node.SceneObject;

public class PickSnape extends Node {
	@Override
	public boolean activate() {
		System.out.println("Testing Picking");
		return Players.getLocal() != null && !Inventory.isFull() && SceneEntities.getNearest(Variables.plants) != null;
	}

	@Override
	public void execute() {
		System.out.println("Picking Snape Weed");
		SceneObject plant = null, tempPlant = null;
		while (!Inventory.isFull()) {
			int i = 0;
			if (tempPlant == null) {
				do {
					plant = SceneEntities.getNearest(Variables.plants[0]);
				} while (plant == null);
			} else {
				plant = tempPlant;
			}
			Camera.turnTo(plant);
			plant.interact("Search");
			sleep(5000);
			do {
				tempPlant = SceneEntities.getNearest(Variables.plants[0]);
				if (Players.getLocal().getAnimation() == -1) {
					System.out.println("i = " + ++i);
				}
			}
			while (plant.equals(tempPlant) && i < Random.nextInt(6,10  ));
		}		
	}

}
