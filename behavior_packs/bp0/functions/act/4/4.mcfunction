
scoreboard players set @a address 40403
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
scoreboard players set @a queue_delay 40
function url
tag @s remove debug_run

#/structure save "room4:itemframes" -34 76 121 -34 76 131 disk
structure load "room4:itemframes" -34 76 122

execute @s -34 76 122 summon rwm:utility ~ ~ ~
execute @s -34 76 122 event entity @e[type=rwm:utility,c=1] always_show_name_add
execute @s -34 76 122 event entity @e[type=rwm:utility,c=1] npc_add
execute @s -34 76 122 execute @e[type=rwm:utility,c=1] ~ ~ ~ tp @s ~ ~0.3 ~

execute @s -34 76 126 summon rwm:utility ~ ~ ~
execute @s -34 76 126 event entity @e[type=rwm:utility,c=1] always_show_name_add
execute @s -34 76 126 event entity @e[type=rwm:utility,c=1] npc_add
execute @s -34 76 126 execute @e[type=rwm:utility,c=1] ~ ~ ~ tp @s ~ ~0.3 ~

execute @s -34 76 130 summon rwm:utility ~ ~ ~
execute @s -34 76 130 event entity @e[type=rwm:utility,c=1] always_show_name_add
execute @s -34 76 130 event entity @e[type=rwm:utility,c=1] npc_add
execute @s -34 76 130 execute @e[type=rwm:utility,c=1] ~ ~ ~ tp @s ~ ~0.3 ~

particle rwm:sparkle_burst -34 76 122
particle rwm:sparkle_burst -34 76 126
particle rwm:sparkle_burst -34 76 130
playsound break.small_amethyst_bud @a ~ ~ ~ 1 1 1