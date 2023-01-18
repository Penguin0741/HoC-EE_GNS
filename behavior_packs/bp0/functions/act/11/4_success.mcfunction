
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 160

execute @s[scores={tick=160}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=160}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=160}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=160}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
# Clear activity zone
execute @s[scores={tick=160,boss_activity=1}] ~ ~ ~ fill 159 0 -565 173 0 -551 air 0
execute @s[scores={tick=160,boss_activity=2}] ~ ~ ~ fill 196 0 -627 190 0 -633 air 0
execute @s[scores={tick=160,boss_activity=3}] ~ ~ ~ fill 259 0 -627 253 0 -633 air 0
execute @s[scores={tick=160,boss_activity=4}] ~ ~ ~ fill 254 0 -550 245 0 -527 air 0
# Replace glass with green glass
execute @s[scores={tick=140}] ~ ~ ~ playsound beacon.activate @a ~ ~ ~ 1 1 1
execute @s[scores={tick=140,boss_activity=1}] ~ ~ ~ fill 169 52 -552 165 58 -552 stained_glass 5 replace stained_glass
execute @s[scores={tick=140,boss_activity=2}] ~ ~ ~ fill 196 48 -628 191 48 -632 stained_glass 5 replace stained_glass
execute @s[scores={tick=140,boss_activity=3}] ~ ~ ~ fill 254 47 -628 259 47 -632 stained_glass 5 replace stained_glass
execute @s[scores={tick=140,boss_activity=4}] ~ ~ ~ fill 247 45 -528 247 48 -541 stained_glass 5 replace stained_glass
# Replace netherite block cylinders with emerald blocks
execute @s[scores={tick=140,boss_activity=1}] ~ ~ ~ fill 170 47 -544 164 54 -550 emerald_block 0 replace netherite_block
execute @s[scores={tick=140,boss_activity=2}] ~ ~ ~ fill 186 45 -627 180 53 -633 emerald_block 0 replace netherite_block
execute @s[scores={tick=140,boss_activity=3}] ~ ~ ~ fill 264 45 -627 270 51 -633 emerald_block 0 replace netherite_block
execute @s[scores={tick=140,boss_activity=4}] ~ ~ ~ fill 249 46 -543 243 53 -549 emerald_block 0 replace netherite_block
# Side room completion dialogue
execute @s[scores={tick=120,boss_activity=1},tag=!dlgopened] ~ ~ ~ dialogue open @e[tag=agent1] @s npc.boss.side_room_1.2
execute @s[scores={tick=120,boss_activity=2},tag=!dlgopened] ~ ~ ~ dialogue open @e[tag=agent2] @s npc.boss.side_room_2.2
execute @s[scores={tick=120,boss_activity=3},tag=!dlgopened] ~ ~ ~ dialogue open @e[tag=agent3] @s npc.boss.side_room_3.2
execute @s[scores={tick=120,boss_activity=4},tag=!dlgopened] ~ ~ ~ dialogue open @e[tag=agent4] @s npc.boss.side_room_4.2
execute @s[scores={tick=120}] ~ ~ ~ scoreboard players add @s tick 1
# Clear glass barrier
execute @s[scores={tick=100,boss_activity=1}] ~ ~ ~ fill 204 42 -561 198 49 -567 barrier 0 replace stained_glass
execute @s[scores={tick=100,boss_activity=2}] ~ ~ ~ fill 198 42 -609 204 49 -615 barrier 0 replace stained_glass
execute @s[scores={tick=100,boss_activity=3}] ~ ~ ~ fill 246 42 -615 252 49 -609 barrier 0 replace stained_glass
execute @s[scores={tick=100,boss_activity=4}] ~ ~ ~ fill 252 42 -567 246 49 -561 barrier 0 replace stained_glass
# Agent prepares to fly to central room
execute @s[scores={tick=100,boss_activity=1}] ~ ~ ~ event entity @e[tag=agent1] movement_fly
execute @s[scores={tick=100,boss_activity=2}] ~ ~ ~ event entity @e[tag=agent2] movement_fly
execute @s[scores={tick=100,boss_activity=3}] ~ ~ ~ event entity @e[tag=agent3] movement_fly
execute @s[scores={tick=100,boss_activity=4}] ~ ~ ~ event entity @e[tag=agent4] movement_fly
execute @s[scores={tick=100,boss_activity=1}] ~ ~ ~ event entity @e[tag=agent1] lookat_remove
execute @s[scores={tick=100,boss_activity=2}] ~ ~ ~ event entity @e[tag=agent2] lookat_remove
execute @s[scores={tick=100,boss_activity=3}] ~ ~ ~ event entity @e[tag=agent3] lookat_remove
execute @s[scores={tick=100,boss_activity=4}] ~ ~ ~ event entity @e[tag=agent4] lookat_remove
execute @s[scores={tick=100,boss_activity=1}] ~ ~ ~ setblock 174 56 -547 air
execute @s[scores={tick=100,boss_activity=2}] ~ ~ ~ setblock 184 58 -629 air
execute @s[scores={tick=100,boss_activity=3}] ~ ~ ~ setblock 266 56 -629 air
execute @s[scores={tick=100,boss_activity=4}] ~ ~ ~ setblock 253 51 -546 air
execute @s[scores={tick=60..100,boss_activity=1}] ~ ~ ~ tp @e[tag=agent1] 174 57 -547 225 0
execute @s[scores={tick=60..100,boss_activity=2}] ~ ~ ~ tp @e[tag=agent2] 184 59 -629 315 0
execute @s[scores={tick=60..100,boss_activity=3}] ~ ~ ~ tp @e[tag=agent3] 266 57 -629 45 0
execute @s[scores={tick=60..100,boss_activity=4}] ~ ~ ~ tp @e[tag=agent4] 253 52 -546 135 0
# Agent flies back to central room
execute @s[scores={tick=60,boss_activity=1}] ~ ~ ~ event entity @e[tag=agent1] goto_add
execute @s[scores={tick=60,boss_activity=2}] ~ ~ ~ event entity @e[tag=agent2] goto_add
execute @s[scores={tick=60,boss_activity=3}] ~ ~ ~ event entity @e[tag=agent3] goto_add
execute @s[scores={tick=60,boss_activity=4}] ~ ~ ~ event entity @e[tag=agent4] goto_add
execute @s[scores={tick=60,boss_activity=1}] ~ ~ ~ execute @s 204 42 -567 summon rwm:utility ~ ~ ~
execute @s[scores={tick=60,boss_activity=1}] ~ ~ ~ execute @s 204 42 -567 tag @e[type=rwm:utility,c=1] add target
execute @s[scores={tick=60,boss_activity=2}] ~ ~ ~ execute @s 204 42 -609 summon rwm:utility ~ ~ ~
execute @s[scores={tick=60,boss_activity=2}] ~ ~ ~ execute @s 204 42 -609 tag @e[type=rwm:utility,c=1] add target
execute @s[scores={tick=60,boss_activity=3}] ~ ~ ~ execute @s 246 42 -609 summon rwm:utility ~ ~ ~
execute @s[scores={tick=60,boss_activity=3}] ~ ~ ~ execute @s 246 42 -609 tag @e[type=rwm:utility,c=1] add target
execute @s[scores={tick=60,boss_activity=4}] ~ ~ ~ execute @s 246 42 -567 summon rwm:utility ~ ~ ~
execute @s[scores={tick=60,boss_activity=4}] ~ ~ ~ execute @s 246 42 -567 tag @e[type=rwm:utility,c=1] add target
# Tp agent back to center
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent] movement_walk
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent] goto_remove
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent] lookat_add
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:utility,tag=!game] despawn
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ execute @e[tag=agent1] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ execute @e[tag=agent2] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ execute @e[tag=agent3] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ execute @e[tag=agent4] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ setblock 222 45 -586 barrier
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ setblock 223 46 -590 barrier
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ setblock 227 46 -590 barrier
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ setblock 228 45 -586 barrier
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ tp @e[tag=agent1] 222 46 -586
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ tp @e[tag=agent2] 223 47 -590
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ tp @e[tag=agent3] 227 47 -590
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ tp @e[tag=agent4] 228 46 -586
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ fill 204 42 -561 198 47 -567 structure_void 0 replace barrier
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ fill 198 42 -609 204 47 -615 structure_void 0 replace barrier
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ fill 246 42 -615 252 47 -609 structure_void 0 replace barrier
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ fill 252 42 -567 246 47 -561 structure_void 0 replace barrier
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s boss_activity 0
execute @s[scores={tick=1}] ~ ~ ~ function act/11/5
