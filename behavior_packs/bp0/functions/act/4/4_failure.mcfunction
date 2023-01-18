
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 80

execute @s[scores={tick=60}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=60}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60,var3=..2}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.too_few","with": ["\n"]}]}
execute @s[scores={tick=60,var3=4..}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.too_many","with": ["\n"]}]}
execute @s[scores={tick=60,var3=3}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.wrong_order","with": ["\n"]}]}
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:medium_barrier -35 74 122
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:medium_barrier -35 74 126
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:medium_barrier -35 74 130
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={tick=1}] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 11 replace stained_glass
execute @s[scores={tick=1}] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 11 replace concrete
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
