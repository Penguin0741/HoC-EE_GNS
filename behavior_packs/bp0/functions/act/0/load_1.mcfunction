
# Load intro board and barriers
structure load "tut:intro_board" -13 67 -257
fill -11 67 -263 -13 69 -261 barrier
fill -12 67 -262 -12 68 -262 air
setblock -12 68 -261 air
setblock -12 68 -263 air
fill -11 56 -323 -13 57 -323 quartz_block 3

setblock -12 67 -213 stone 6
setblock -12 68 -213 polished_blackstone_button 1

setblock -12 59 -262 stone
setblock -12 60 -262 light_block 15

setblock -12 59 -218 stone
setblock -12 60 -218 light_block 15

setblock -12 40 -326 bedrock
setblock -12 41 -326 light_block 15

setblock -8 66 -171 iron_trapdoor 5
fill -11 77 -181 -13 80 -181 air

structure load intro:gate1 -18 68 -288
structure load intro:house1 -29 67 -168