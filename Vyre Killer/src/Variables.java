import org.powerbot.game.api.util.Filter;
import org.powerbot.game.api.wrappers.interactive.NPC;
import org.powerbot.game.api.wrappers.node.Item;
import org.powerbot.game.api.wrappers.node.SceneObject;


public class Variables {
	
	public final static int[] teleports = {23643, 21576};
	
	public static Filter<Item> teleportFilter = new Filter<Item>() {
		public boolean accept(Item n) {
			if (n == null) {
				return false;
			}
			for (int i : teleports) {
				if (n.getId() == i) 
					return true;
			}
			return false;
		}
		
	};
	
	public final static int[] bankers = {12759};

	public static Filter<SceneObject> bankerFilter = new Filter<SceneObject>() {
		public boolean accept(SceneObject n) {
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
	
	public final static int[] vyres = {7691,7692,7693,7694,7695,7696,7697,
		7698,7699,7700,7701,7702,7703,7704,7705,7706};

	public static Filter<NPC> vyreFilter = new Filter<NPC>() {
		public boolean accept(NPC n) {
			if (n == null || !n.getLocation().canReach()) {
				return false;
			}
			for (int i : vyres) {
				if (n.getId() == i) 
					return true;
			}
			return false;
		}
		
	};
	
	public final static int[] corpses = {13157,21454,21455,21456,21457,21458,21459,
		21460,21461,21609,21610,21611,21612,21613,21614,21615};
			
	public static Filter<Item> corpseFilter = new Filter<Item>() {
		public boolean accept(Item n) {
			if (n == null) {
				return false;
			}
			for (int i : corpses) {
				if (n.getId() == i) 
					return true;
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
