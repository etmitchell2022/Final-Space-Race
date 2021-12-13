# Semester Project Space Race

Authors: Spencer Naugler, Carter Jeurissen, and Evan Mitchell

[Play the game on itch.io](https://etmitchell2022.itch.io/space-race)

## Juice

- On our screen that shows up when you beat a level, there is confeti falling from the top of the screen.
- When you flip the car over and it explodes there is a sreenshake to add impact.
- Title Screen is animated to add life while starting the game

## Instructions

- Use the right and left arrows to move the car forward and backward. These controls also work with rotating the car when it is off the ground.
- Press escape to pause and unpause the game
- Make it through each level without flipping over.
- Collect coins to use for purchasing new vehicles.

## Reflection

Overall, we feel this iteration went well. We had a few large features we wanted to implement along with some fixes from the previous iteration. The most complicated one logically was the purchase system with coins. This took a while because of all the different states and tracking that was needed to save data over multiple levels. We made a decision to make this saved globally since it had some ties to the HUD which is also controlled through globals. Another thing we wanted to do was make an intro level to help players get used to how the game feels before tackling the more challenging levels from the previous iteration. This has been implemented with a Sun theme. We took the feedback from iteration 2 of the scoring system not fitting the goal of the game and implemented a progress bar to show the player how close they are to the end of the level. This works well and the game feels much nicer because of it. Getting the CI/CD pipeline to work was also something really cool to see. It wasn't high on the priority list but because we were able to finish other features in a timely manner we went ahead and completed it. Overall, we are proud of our final product and we enjoyed seeing how we could take what we learned in the first half of the semester and translate that into a more complex and fun game.

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
- [x] ⭐ Incorporate juiciness and document it in the <code>README.md</code>
- [x] ⭐ Use particle effects
- [ ] ⭐ Use different layers and masks to manage collisions and document this in the <code>README.md</code>
- [x] ⭐ Incorporate pop into your HUD or title screen using <code>Tween</code> or <code>AnimationPlayer</code>
- [ ] ⭐ Include an AI-controlled character
- [x] ⭐ Add a pause menu that includes, at minimum, the ability to resume or return to the main menu
- [x] ⭐ The game is released publicly on <code>itch.io</code>, with all the recommended accompanying text, screenshots, gameplay videos, <i>etc.</i>

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

- [Background Music](https://freesound.org/people/Far_Box_creature/sounds/472712/), "Music 1.mp3" by [Far_Box_Creature](https://freesound.org/people/Far_Box_creature/) is licenced under [CCBYNC 3.0](https://creativecommons.org/licenses/by/3.0/)

- [Car Crash](https://freesound.org/people/magnuswaker/sounds/592388/), "Car Crash" by [magnus walker](https://freesound.org/people/magnuswaker/) licensed under [CCBYNC 3.0](https://creativecommons.org/licenses/by/3.0/)

- [SmartShape2D level creation tool](https://github.com/SirRamEsq/SmartShape2D), licensed under [MIT License](https://opensource.org/licenses/MIT)
