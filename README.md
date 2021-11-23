# Semester Project Space Race

Authors: Spencer Naugler, Carter Jeurissen, and Evan Mitchell

## Instructions

- Use the right and left arrows to move the car forward and backward. These controls also work with rotating the car when it is off the ground.
- Press escape to pause and unpause the game
- Make it over all the hills to complete the level while collecting as many points as possible.

## Reflection

Overall, as a team we think this iteration went well. 
It was cool to be able to replicate a game that was super popular when we were younger.
We did have a few challenges that slowed our progress like getting the correct movement down for the car, a few git issues, and then making the level be auto-generated each time the game starts.
For the car movement, we had the issue where the car would rotate when it was off the ground and crash.
The player was not able to correct the rotation which was annoying and made the game too difficult.
We ended up finding that a RigidBody2D has a built in method ```apply_torque_impulse``` that would allow the car to move forward and rotate without any extra setup so this helped a lot to get the correct movement we wanted.
We are proud of the auto-generation of the levels as this makes the game more interesting instead of playing the same thing over and over and it makes it feel like the original game.
We do need to improve scoring in the next iteration as now it just shows a count of hills remaining.
Overall, we think we dd well this iteration and created a nice foundation to build off for the future iterations.
With the car movement and level generation figured out, we will be able to focus on adding more levels and customization.

## Self Evaluation

- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The release demonstrates the core gameplay loop: the player can take actions that move them toward a goal.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: The game runs without errors or warnings.
- [X] B-3: The source code and project structure comply with our adopted style guides.
- [X] B-4: Clear progress has been made on the game with respect to the project plan.
- [X] A-1: The source code contains no warnings. All warnings are properly addressed, not just ignored.
- [X] A-2: The game includes the conventional player experience loop of title, gameplay, and ending.
- [X] A-3: Earn <em>N</em>*&lceil;<em>P</em>/2&rceil; stars, where <em>N</em> is the iteration number and <em>P</em> is the number of people on the team.
- [X] ⭐ Include a dynamic (non-static) camera
- [X] ⭐ Incorporate parallax background scrolling
- [ ] ⭐ Use paper doll animations
- [ ] ⭐ Use an <code>AnimationTree</code> with either blend spaces (3D) or an animation state machine (2D)
- [X] ⭐ Incorporate smooth transitions between title, game, and end states, rather than jumping between states via <code>change_scene</code>
- [ ] ⭐ Support two of the following: touch input, mouse/keyboard input, and gamepad input
- [x] ⭐ Allow the user to control the volume of music and sound effects independently.
- [ ] ⭐ Incorporate juiciness and document it in the <code>README.md</code>
- [X] ⭐ Use particle effects
- [ ] ⭐ Use different layers and masks to manage collisions and document this in the <code>README.md</code>
- [X] ⭐ Incorporate pop into your HUD or title screen using <code>Tween</code> or <code>AnimationPlayer</code>
- [ ] ⭐ Include an AI-controlled character
- [X] ⭐ Add a pause menu that includes, at minimum, the ability to resume or return to the main menu
- [ ] ⭐ The game is released publicly on <code>itch.io</code>, with all the recommended accompanying text, screenshots, gameplay videos, <i>etc.</i>

## Third-Party Assets

- [Kenney's Background Elements](https://kenney.nl/assets/background-elements), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Smoke Particles](https://kenney.nl/assets/smoke-particles), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Voxel Pack](https://kenney.nl/assets/voxel-pack) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's UI Pack](https://kenney.nl/assets/ui-pack) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Kenney's Game Icons](https://kenney.nl/assets/game-icons) licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)

- [Space Background](https://opengameart.org/content/space-background-6), licensed under [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/).

- [Roboto font](https://fonts.google.com/specimen/Roboto#license), licensed under [Apache license, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)

- [Odibee Sans](https://fonts.google.com/specimen/Odibee+Sans?query=Odibee+Sans#license), licensed under [Open Font License, Version 2.0](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)

- [Free 2D Vehicle Assets](https://overcrafted.itch.io/free-paid-vehicle-car-sprites-), licensed under "The vehicles are free to use. You do not need to add credit. You do not need to ask permission. You can alter and change as you wish."

- [Background Music](https://freesound.org/people/Far_Box_creature/sounds/472712/), licensed under [CCO 3.0](https://creativecommons.org/licenses/by/3.0/)

- [Car Crash](https://freesound.org/people/magnuswaker/sounds/592388/), licensed under [CCO 3.0](https://creativecommons.org/licenses/by/3.0/)

- [Add Hills Function](https://github.com/kidscancode/godot3_procgen_demos), licensed under [MIT License](https://opensource.org/licenses/MIT)

- [SmartShape2D level creation tool](https://github.com/SirRamEsq/SmartShape2D), licensed under [MIT License](https://opensource.org/licenses/MIT)
