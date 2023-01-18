tag @s add main_player
scoreboard players set @s agent 1
scoreboard players set @s language 1
scoreboard players set @s path 1

kill @e[type=rwm:cam]
function clear_entities

execute @s 222 41 -586 summon rwm:time_agent ~ ~ ~ skin_5
execute @s 222 41 -586 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent1
execute @s 222 41 -586 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.pixie.0
execute @s 223 41 -590 summon rwm:time_agent ~ ~ ~ skin_2
execute @s 223 41 -590 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent2
execute @s 223 41 -590 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.yeti.0
execute @s 227 41 -590 summon rwm:time_agent ~ ~ ~ skin_4
execute @s 227 41 -590 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent3
execute @s 227 41 -590 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.banshee.0
execute @s 228 41 -586 summon rwm:time_agent ~ ~ ~ skin_3
execute @s 228 41 -586 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent4
execute @s 228 41 -586 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.gremlin.0
execute @s 225 41 -588 summon rwm:time_agent ~ ~ ~ skin_1
execute @s 225 41 -588 tag @e[type=rwm:time_agent,c=1,tag=!old] add agent5
execute @s 225 41 -588 dialogue change @e[type=rwm:time_agent,c=1,tag=!old] npc.rascal.0

tag @e[type=rwm:time_agent] add stunned

fill 214 40 -599 236 40 -577 stained_glass 0 replace iron_block

tp @a 225 42 -568
function act/11/8
