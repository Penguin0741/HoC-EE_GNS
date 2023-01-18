
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:painting] slide_down
execute @s[scores={tick=60}] ~ ~ ~ setblock 40 72 90 stained_glass 7
execute @s[scores={tick=60}] ~ ~ ~ setblock 38 72 90 stained_glass 7
execute @s[scores={tick=60}] ~ ~ ~ setblock 36 72 90 stained_glass 7
execute @s[scores={tick=70}] ~ ~ ~ setblock 40 73 90 stained_glass 7
execute @s[scores={tick=70}] ~ ~ ~ setblock 38 73 90 stained_glass 7
execute @s[scores={tick=70}] ~ ~ ~ setblock 36 73 90 stained_glass 7
execute @s[scores={tick=80}] ~ ~ ~ setblock 40 74 90 stained_glass 7
execute @s[scores={tick=80}] ~ ~ ~ setblock 38 74 90 stained_glass 7
execute @s[scores={tick=80}] ~ ~ ~ setblock 36 74 90 stained_glass 7
execute @s[scores={tick=90}] ~ ~ ~ fill 40 75 90 36 75 90 stained_glass 7
execute @s[scores={tick=60}] ~ ~ ~ fill 40 72 89 36 75 89 light_block 15
execute @s[scores={tick=60}] ~ ~ ~ tp @c 38 72 91 0 0
execute @s[scores={tick=60}] ~ ~ ~ scoreboard players remove @s address 3
