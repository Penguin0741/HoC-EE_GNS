
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 20

execute @s[scores={tick=20}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=20}] ~ ~ ~ fill -43 75 129 -43 76 129 air
execute @s[scores={tick=1}] -34 76 122 dialogue change @e[type=rwm:utility,c=1] npc.label.phantom_membrane
execute @s[scores={tick=1}] -34 76 126 dialogue change @e[type=rwm:utility,c=1] npc.label.fermented_spider_eye
execute @s[scores={tick=1}] -34 76 130 dialogue change @e[type=rwm:utility,c=1] npc.label.nether_wart
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3