import org.powerbot.game.api.util.Filter;
import org.powerbot.game.api.wrappers.interactive.NPC;
import org.powerbot.game.api.wrappers.node.Item;
import org.powerbot.game.api.wrappers.node.SceneObject;


public class Variables {
	
	public final static int[] rings = {23643};
	
	public static Filter<Item> ringFilter = new Filter<Item>() {
		public boolean accept(Item n) {
			if (n == null) {
				return false;
			}
			for (int i : rings) {
				if (n.getId() == i) 
					return true;
			}
			return false;
		}
		
	};
	
	public final static int[] bankers = {2617};

	public static Filter<NPC> bankerFilter = new Filter<NPC>() {
		public boolean accept(NPC n) {
			if (n == null || !n.getLocation().canReach()) {
				return false;
			}
			for (int i : bankers) {
				if (n.getId() == i) 
					return true;
			}
			return false;
		}
		
	};
	
	public final static int[] fairyRings = {68234, 12128, 14130};
	
	public static Filter<SceneObject> fairyFilter = new Filter<SceneObject>() {
		public boolean accept(SceneObject n) {
			if (n == null || !n.getLocation().canReach()) {
				return false;
			}
			for (int i : fairyRings) {
				return n.getId() == i;
			}
			return false;
		}
		
	};
	
	public final static int[] plants = {2575, 2576};
	
	public static Filter<SceneObject> plantFilter = new Filter<SceneObject>() {
		public boolean accept(SceneObject n) {
			if (n == null || !n.getLocation().canReach()) {
				return false;
			}
			for (int i : plants) {
				return n != null && n.getId() == i && n.getLocation().canReach();
			}
			return false;
		}
		
	};
}
