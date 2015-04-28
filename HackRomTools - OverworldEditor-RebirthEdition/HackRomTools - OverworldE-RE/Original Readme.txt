Overworld Editor - Rebirth Edition
Original version by Xeon
Version 1.1.3 by Andrea Sartori aka Mew2 aka HackMew

Sprite Navigation
=================
This is where you can pick the index of the sprite
to edit, there are hundreds of sprites on all the games.

Sprite Header #1 Info
=====================
Sprite #: Current sprite you are on.
Starter Bytes: First two bytes in the header, always FFFF.
Pallete #: This is just the numerical index of the Pallete. There are around 20+ sprite palletes in the game.
Sprite Data Size: The number of bytes a the sprite takes
Width and Height: Self-explanitory.
Unknown Data 1: Self-Explanitory, it's in the header, and I have no idea what it does?
Unknown Data 2: More data I have no clue what it does.
Sprite Pointer: Points to Sprite Header #2
Unknown Pointer 1, 2, 3, and 4 I have no idea what kind of data these pointers point to. I believe 2 has to do with tile arrangment.

Sprite Header #2 Info
=====================
Sprite Pointer: Actual pointer to the sprite image data.
Data Size: another specifier of datasize
Unknown 1: As the name says!

Drawing Canvas Features
=======================
- You can drag the current color, it's like paintbrush.
- Right click on a pixel and it will make that the selected
  color.
- Displays the color your mouse is over, and the currently
  selected color.

Games Supported
===============
- Pokemon Ruby/Sapphire/Emerald (All Versions)
- Pokemon FireRed/LeafGreen (All Versions)