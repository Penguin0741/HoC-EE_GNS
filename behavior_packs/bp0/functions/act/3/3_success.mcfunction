
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 70

execute @s[scores={tick=70}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=70}] ~ ~ ~ setblock 43 71 170 wooden_slab 1
execute @s[scores={tick=60}] ~ ~ ~ setblock 42 71 170 wooden_slab 1
execute @s[scores={tick=60}] ~ ~ ~ setblock 43 71 169 wooden_slab 1
execute @s[scores={tick=60}] ~ ~ ~ setblock 43 71 170 planks 1
execute @s[scores={tick=60}] ~ ~ ~ setblock 43 71 171 wooden_slab 1
execute @s[scores={tick=60}] ~ ~ ~ setblock 44 72 170 wooden_slab 1
execute @s[scores={tick=50}] ~ ~ ~ fill 42 71 169 42 71 171 wooden_slab 1
execute @s[scores={tick=50}] ~ ~ ~ fill 43 71 169 43 71 171 planks 1
execute @s[scores={tick=50}] ~ ~ ~ fill 44 72 169 44 72 171 wooden_slab 1
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 73 169
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 73 170
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 73 171
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 74 169
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 74 170
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 74 171
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 75 169
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 75 170
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle 44 75 171
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 73 169
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 73 170
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 73 171
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 74 169
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 74 170
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 74 171
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 75 169
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 75 170
execute @s[scores={tick=30}] ~ ~ ~ particle rwm:sparkle 44 75 171
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 73 169
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 73 170
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 73 171
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 74 169
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 74 170
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 74 171
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 75 169
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 75 170
execute @s[scores={tick=20}] ~ ~ ~ particle rwm:sparkle 44 75 171
execute @s[scores={tick=20}] ~ ~ ~ playsound break.amethyst_block @a ~ ~ ~ 1 1 1
execute @s[scores={tick=20}] ~ ~ ~ fill 45 75 169 45 73 171 air 0 destroy
execute @s[scores={tick=20}] ~ ~ ~ summon rwm:king 45 74 170 interactable
execute @s[scores={tick=20}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.0
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:king] rotation1

execute @s[scores={tick=20}] ~ ~ ~ function act/3/4