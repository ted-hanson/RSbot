import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.powerbot.core.script.ActiveScript;
import org.powerbot.core.script.job.state.Node;
import org.powerbot.core.script.job.state.Tree;
import org.powerbot.game.api.Manifest;
import org.powerbot.game.api.util.Random;


@Manifest(authors = { "bcwfs" }, name = "Snape Weed Grabber")
public class SnapeWeedGrabber extends ActiveScript {

	private final List<Node> jobsCollection = Collections.synchronizedList(new ArrayList<Node>());
	private Tree jobContainer = null;
	
    public synchronized final void provide(final Node... jobs) {
        for (final Node job : jobs) {
            if(!jobsCollection.contains(job)) {
                jobsCollection.add(job);
            }
        }
        jobContainer = new Tree(jobsCollection.toArray(new Node[jobsCollection.size()]));
    }    
    
	public void onStart() {
		System.out.println("Starting Snape Weed Grabber");
		provide(new Teleport(), new Banking(), new ClickFairy(), new TeleportToArea(), new WalkToArea(), new PickSnape());
	}
	
	@Override
	public int loop() {
        if (jobContainer != null) {
            final Node job = jobContainer.state();
            if (job != null) {
                jobContainer.set(job);
                getContainer().submit(job);
                job.join();
            }
        }
        return Random.nextInt(10, 50);
    }


}
