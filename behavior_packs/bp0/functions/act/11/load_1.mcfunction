
# No structures to load

# Activity zones
fill 159 0 -565 173 0 -551 concrete 1
fill 196 0 -627 190 0 -633 concrete 2
fill 259 0 -627 253 0 -633 concrete 3
fill 254 0 -550 245 0 -527 concrete 4

# Structure voids for cursors
fill 224 91 -567 226 91 -569 structure_void 0

# Door pad
execute @s[scores={path=1..2}] ~ ~ ~ setblock 224 41 -567 concrete 2
execute @s[scores={path=1..2}] ~ ~ ~ setblock 224 41 -569 concrete 4
execute @s[scores={path=1..2}] ~ ~ ~ setblock 226 41 -569 concrete 3
execute @s[scores={path=1..2}] ~ ~ ~ setblock 226 41 -567 concrete 5
execute @s[scores={path=3}] ~ ~ ~ fill 224 41 -567 226 41 -569 air 0 replace concrete

# Doors
execute @s ~ ~ ~ fill 204 42 -561 198 49 -567 polished_deepslate 0 replace stained_glass
execute @s ~ ~ ~ fill 198 42 -609 204 49 -615 polished_deepslate 0 replace stained_glass
execute @s ~ ~ ~ fill 246 42 -615 252 49 -609 polished_deepslate 0 replace stained_glass
execute @s ~ ~ ~ fill 252 42 -567 246 49 -561 polished_deepslate 0 replace stained_glass
execute @s[scores={path=1}] ~ ~ ~ fill 204 42 -561 198 49 -567 polished_deepslate 0 replace structure_void
execute @s[scores={path=1}] ~ ~ ~ fill 198 42 -609 204 49 -615 polished_deepslate 0 replace structure_void
execute @s[scores={path=1}] ~ ~ ~ fill 246 42 -615 252 49 -609 polished_deepslate 0 replace structure_void
execute @s[scores={path=1}] ~ ~ ~ fill 252 42 -567 246 49 -561 polished_deepslate 0 replace structure_void
execute @s[scores={path=2}] ~ ~ ~ fill 204 42 -561 198 49 -567 structure_void 0 replace polished_deepslate
execute @s[scores={path=2}] ~ ~ ~ fill 198 42 -609 204 49 -615 structure_void 0 replace polished_deepslate
execute @s[scores={path=2}] ~ ~ ~ fill 246 42 -615 252 49 -609 structure_void 0 replace polished_deepslate
execute @s[scores={path=2}] ~ ~ ~ fill 252 42 -567 246 49 -561 structure_void 0 replace polished_deepslate
execute @s[scores={path=3}] ~ ~ ~ fill 204 42 -561 198 49 -567 polished_deepslate 0 replace structure_void
execute @s[scores={path=3}] ~ ~ ~ fill 198 42 -609 204 49 -615 polished_deepslate 0 replace structure_void
execute @s[scores={path=3}] ~ ~ ~ fill 246 42 -615 252 49 -609 polished_deepslate 0 replace structure_void
execute @s[scores={path=3}] ~ ~ ~ fill 252 42 -567 246 49 -561 polished_deepslate 0 replace structure_void

# Success states inside side rooms
fill 169 52 -552 165 58 -552 stained_glass 0 replace stained_glass
fill 196 48 -628 191 48 -632 stained_glass 0 replace stained_glass
fill 254 47 -628 259 47 -632 stained_glass 0 replace stained_glass
fill 247 45 -528 247 48 -541 stained_glass 0 replace stained_glass
fill 170 47 -544 164 54 -550 netherite_block 0 replace emerald_block
fill 186 45 -627 180 53 -633 netherite_block 0 replace emerald_block
fill 264 45 -627 270 51 -633 netherite_block 0 replace emerald_block
fill 249 46 -543 243 53 -549 netherite_block 0 replace emerald_block
setblock 168 52 -551 lever 2
setblock 191 47 -630 lever 1
setblock 259 46 -630 lever 2
setblock 246 45 -541 lever 3

# Close shutter
fill 214 40 -599 236 40 -577 iron_block 0 replace stained_glass

setblock 166 52 -551 waxed_copper
setblock 168 51 -551 smooth_stone
setblock 191 46 -630 smooth_stone
setblock 259 45 -630 smooth_stone
setblock 246 44 -541 smooth_stone

setblock 167 50 -551 light_block 15
setblock 192 45 -630 light_block 15
setblock 257 44 -630 light_block 15
setblock 246 43 -540 light_block 15