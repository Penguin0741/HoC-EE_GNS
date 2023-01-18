
scoreboard players set @a address 20300
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 0
scoreboard players set @a var2 0
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

difficulty easy

summon rwm:diner_zombie 29 71 129
summon rwm:diner_wither_skeleton 32 71 129
summon rwm:diner_creeper 32 71 124
summon rwm:diner_skeleton 29 71 124

execute @s 32 72 125 summon rwm:plate ~ ~ ~
execute @s 32 72 125 event entity @e[type=rwm:plate,c=1] item_0
execute @s 32 72 128 summon rwm:plate ~ ~ ~
execute @s 32 72 128 event entity @e[type=rwm:plate,c=1] item_1
execute @s 29 72 128 summon rwm:plate ~ ~ ~
execute @s 29 72 128 event entity @e[type=rwm:plate,c=1] item_2
execute @s 29 72 125 summon rwm:plate ~ ~ ~
execute @s 29 72 125 event entity @e[type=rwm:plate,c=1] item_3