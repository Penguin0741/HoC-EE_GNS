
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1

execute @s[scores={tick=60,var1=1}] ~ ~ ~ execute @e[type=rwm:diner_creeper] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~
execute @s[scores={tick=60,var1=2}] ~ ~ ~ execute @e[type=rwm:diner_creeper] ~ ~ ~ particle rwm:checkmark ~ ~1.5 ~
execute @s[scores={tick=60,var1=3..4}] ~ ~ ~ execute @e[type=rwm:diner_creeper] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~

execute @s[scores={tick=60,var2=1..3}] ~ ~ ~ execute @e[type=rwm:diner_wither_skeleton] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~
execute @s[scores={tick=60,var2=4}] ~ ~ ~ execute @e[type=rwm:diner_wither_skeleton] ~ ~ ~ particle rwm:checkmark ~ ~1.5 ~

execute @s[scores={tick=60,var3=1}] ~ ~ ~ execute @e[type=rwm:diner_zombie] ~ ~ ~ particle rwm:checkmark ~ ~1.5 ~
execute @s[scores={tick=60,var3=2..4}] ~ ~ ~ execute @e[type=rwm:diner_zombie] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~

execute @s[scores={tick=60,var4=1..2}] ~ ~ ~ execute @e[type=rwm:diner_skeleton] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~
execute @s[scores={tick=60,var4=3}] ~ ~ ~ execute @e[type=rwm:diner_skeleton] ~ ~ ~ particle rwm:checkmark ~ ~1.5 ~
execute @s[scores={tick=60,var4=4}] ~ ~ ~ execute @e[type=rwm:diner_skeleton] ~ ~ ~ particle rwm:barrier ~ ~1.5 ~

execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:plate] despawn
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:plate] add old
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 2
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 3
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var4 4
execute @s[scores={tick=1}] ~ ~ ~ execute @s 32 72 125 summon rwm:plate ~ ~ ~
execute @s[scores={tick=1}] ~ ~ ~ execute @s 32 72 125 event entity @e[type=rwm:plate,c=1,tag=!old] item_0
execute @s[scores={tick=1}] ~ ~ ~ execute @s 32 72 128 summon rwm:plate ~ ~ ~
execute @s[scores={tick=1}] ~ ~ ~ execute @s 32 72 128 event entity @e[type=rwm:plate,c=1,tag=!old] item_1
execute @s[scores={tick=1}] ~ ~ ~ execute @s 29 72 128 summon rwm:plate ~ ~ ~
execute @s[scores={tick=1}] ~ ~ ~ execute @s 29 72 128 event entity @e[type=rwm:plate,c=1,tag=!old] item_2
execute @s[scores={tick=1}] ~ ~ ~ execute @s 29 72 125 summon rwm:plate ~ ~ ~
execute @s[scores={tick=1}] ~ ~ ~ execute @s 29 72 125 event entity @e[type=rwm:plate,c=1,tag=!old] item_3
execute @s[scores={tick=1}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code