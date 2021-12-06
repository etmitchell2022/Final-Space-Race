# Semester Project Space Race

Authors: Spencer Naugler, Carter Jeurissen, and Evan Mitchell

## Juice
- On our screen that shows up when you beat a level, there is confeti falling from the top of the screen. 
- When you flip the car over and it explodes there is a sreenshake to add impact.
- Title Screen is animated to add life while starting the game

## Instructions

- Use the right and left arrows to move the car forward and backward. These controls also work with rotating the car when it is off the ground.
- Press escape to pause and unpause the game
- Make it through each level going as fast as you can. More points are scored when moving the vehicle faster

## Reflection

Overall, we feel this iteration went well. We found in this iteration that there were not obvious paths to success with a few of the features we wanted to implement so that made some things a little more challenging than initially expected. 
For example, we wanted a vehicle menu that lets the player pick what vehicle they wanted to use in the levels. This ended up needing to be stored as a global variable since multiple scenes needed access to what was being selected by the 
user to determine what vehicle scene to load. With the new levels created, we found that one smaller feature was a lot more difficult to make happen than we that. There is a button on the end scene when the user completes a level that lets the user restart the level if they fail or succeed 
and this button needed to be dynamic to figure out what level they were on and properly link them back to it. We were surprised that Godot didn't have anyway to explicitly track this so we have to make our own tracking system. The solution felt a little like a hack and we are hoping we can find a 
more efficient way of doing it for next iteration. One thing we are proud of is how the new levels look. We found a tool called SmartShape2D and this allowed us to easily create 2D curved terrain which helped us a ton for making cool and unique levels. We did end up removing the auto-generation of the first
level as it didn't fit the same structure as the new levels. We still haven't quite figured out a great way of scoring the game. In this iteration we went with the fastest speed as being the player's score. This makes the game a little more challenging since the game can be easily completed if the player does
not take risks and just moves slowly through the levels. Overall, we think we did well this iteration and we plan to continue adding customization and more to the HUD next iteration.

## Self Evaluation

- [x] D-1: The repository link is submitted to Canvas before the project deadline.
- [x] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [x] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [x] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [x] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [x] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [x] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [x] C-6: The release demonstrates the core gameplay loop: the player can take actions that move them toward a goal.
- [x] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [x] B-2: The game runs without errors or warnings.
- [x] B-3: The source code and project structure comply with our adopted style guides.
- [x] B-4: Clear progress has been made on the game with respect to the project plan.
- [x] A-1: The source code contains no warnings. All warnings are properly addressed, not just ignored.
- [x] A-2: The game includes the conventional player experience loop of title, gameplay, and ending.
- [x] A-3: Earn <em>N</em>\*&lceil;<em>P</em>/2&rceil; stars, where <em>N</em> is the iteration number and <em>P</em> is the number of people on the team.
- [x] ⭐ Include a dynamic (non-static) camera
- [x] ⭐ Incorporate parallax background scrolling
- [ ] ⭐ Use paper doll animations
- [ ] ⭐ Use an <code>AnimationTree</code> with either blend spaces (3D) or an animation state machine (2D)
- [x] ⭐ Incorporate smooth transitions between title, game, and end states, rather than jumping between states via <code>change_scene</code>
- [ ] ⭐ Support two of the following: touch input, mouse/keyboard input, and gamepad input
- [x] ⭐ Allow the user to control the volume of music and sound effects independently.
- [ ] ⭐ Incorporate juiciness and document it in the <code>README.md</code>
- [X] ⭐ Use particle effects
- [ ] ⭐ Use different layers and masks to manage collisions and document this in the <code>README.md</code>
- [x] ⭐ Incorporate pop into your HUD or title screen using <code>Tween</code> or <code>AnimationPlayer</code>
- [ ] ⭐ Include an AI-controlled character
- [x] ⭐ Add a pause menu that includes, at minimum, the ability to resume or return to the main menu
- [ ] ⭐ The game is released publicly on <code>itch.io</code>, with all the recommended accompanying text, screenshots, gameplay videos, <i>etc.</i>

## Third-Party Assets

- [Kenney's Background Elements](https://kenney.nl/assets/background-elements), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Smoke Particles](https://kenney.nl/assets/smoke-particles), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Voxel Pack](https://kenney.nl/assets/voxel-pack) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's UI Pack](https://kenney.nl/assets/ui-pack) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Game Icons](https://kenney.nl/assets/game-icons) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Puzzle Pack 2](https://kenney.nl/assets/puzzle-pack-2) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Space Background](https://opengameart.org/content/space-background-6), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/).

- [Roboto font](https://fonts.google.com/specimen/Roboto#license), licensed under [Apache license, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)

- [Odibee Sans](https://fonts.google.com/specimen/Odibee+Sans?query=Odibee+Sans#license), licensed under [Open Font License, Version 2.0](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)

- [Free 2D Vehicle Assets](https://overcrafted.itch.io/free-paid-vehicle-car-sprites-), licensed under "The vehicles are free to use. You do not need to add credit. You do not need to ask permission. You can alter and change as you wish."

- [Background Music](https://freesound.org/people/Far_Box_creature/sounds/472712/), licensed under [CCO 3.0](https://creativecommons.org/licenses/by/3.0/)

- [Car Crash](https://freesound.org/people/magnuswaker/sounds/592388/), licensed under [CCO 3.0](https://creativecommons.org/licenses/by/3.0/)

- [Add Hills Function](https://github.com/kidscancode/godot3_procgen_demos), licensed under [MIT License](https://opensource.org/licenses/MIT)

- [SmartShape2D level creation tool](https://github.com/SirRamEsq/SmartShape2D), licensed under [MIT License](https://opensource.org/licenses/MIT)
