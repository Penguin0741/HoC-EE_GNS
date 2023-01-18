
function clear_entities

tp @a 225 42 -562 180 0

# Time agents
setblock 222 45 -586 barrier
setblock 223 46 -590 barrier
setblock 227 46 -590 barrier
setblock 228 45 -586 barrier
setblock 225 45 -588 barrier

execute @s 222 46 -586 summon rwm:time_agent ~ ~ ~ skin_5
execute @s 222 46 -586 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent1
execute @s 222 46 -586 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.pixie.0
execute @s 223 47 -590 summon rwm:time_agent ~ ~ ~ skin_2
execute @s 223 47 -590 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent2
execute @s 223 47 -590 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.yeti.0
execute @s 227 47 -590 summon rwm:time_agent ~ ~ ~ skin_4
execute @s 227 47 -590 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent3
execute @s 227 47 -590 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.banshee.0
execute @s 228 46 -586 summon rwm:time_agent ~ ~ ~ skin_3
execute @s 228 46 -586 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent4
execute @s 228 46 -586 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.gremlin.0
execute @s 225 46 -588 summon rwm:time_agent ~ ~ ~ skin_1
execute @s 225 46 -588 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent5
execute @s 225 46 -588 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.rascal.0

event entity @e[type=rwm:time_agent] lookat_add

execute @s 202 42 -565 summon rwm:utility ~ ~ ~
execute @s 202 42 -565 tag @e[type=rwm:utility,c=1] add target
execute @s 202 42 -611 summon rwm:utility ~ ~ ~
execute @s 202 42 -611 tag @e[type=rwm:utility,c=1] add target
execute @s 248 42 -611 summon rwm:utility ~ ~ ~
execute @s 248 42 -611 tag @e[type=rwm:utility,c=1] add target
execute @s 248 42 -565 summon rwm:utility ~ ~ ~
execute @s 248 42 -565 tag @e[type=rwm:utility,c=1] add target

# Tarra npc
setblock 225 34 -570 light_block 15
summon rwm:tarra 225 34 -570 npc

# Time onion
summon rwm:time_onion 225 50 -588

# Reset tags
tag @s remove cannon_1
tag @s remove cannon_2
tag @s remove cannon_3
tag @s remove cannon_4
tag @s remove side_room_1
tag @s remove side_room_2
tag @s remove side_room_3
tag @s remove side_room_4
tag @s remove dlg_agent

structure load "boss:ring_outer" 201 8 -612 0_degrees
structure load "boss:ring_middle" 207 7 -606 0_degrees
structure load "boss:ring_inner" 213 6 -600 0_degrees

event entity @c skin_0

summon rwm:fake_agent 225 34 -570