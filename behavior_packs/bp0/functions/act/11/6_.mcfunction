
execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[scores={path=1},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.green.4.1
execute @s[scores={path=2},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.yellow.4.1
execute @s[scores={path=3},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.red.4.1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:time_agent] lookat_add
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ tag @s remove cannon_1
execute @s[tag=start_signal] ~ ~ ~ tag @s remove cannon_2
execute @s[tag=start_signal] ~ ~ ~ tag @s remove cannon_3
execute @s[tag=start_signal] ~ ~ ~ tag @s remove cannon_4
execute @s[tag=start_signal] ~ ~ ~ tag @e[type=rwm:time_agent] remove stunned
execute @s[tag=start_signal] ~ ~ ~ setblock 222 45 -586 barrier
execute @s[tag=start_signal] ~ ~ ~ setblock 223 46 -590 barrier
execute @s[tag=start_signal] ~ ~ ~ setblock 227 46 -590 barrier
execute @s[tag=start_signal] ~ ~ ~ setblock 228 45 -586 barrier
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=agent1] 222 46 -586
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=agent2] 223 47 -590
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=agent3] 227 47 -590
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=agent4] 228 46 -586
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=agent5] 225 46 -588
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:time_onion] show_rings
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cannon] reset

# Instructions for firing the cannons
# Magenta cannon
execute @s[tag=cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 playsound item.shield.block @a ~ ~ ~ 1 1 1
execute @s[tag=cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cannon,tag=cannon_1] ~ ~ ~ particle rwm:big_barrier ~ ~7 ~
execute @s[tag=!cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s queue_tick 110
execute @s[tag=!cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var2 110
execute @s[tag=!cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var3 1
execute @s[tag=!cannon_1,scores={var1=3}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var4 1
execute @s[tag=!cannon_1,scores={var1=3}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var1 1
execute @s[tag=!cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 event entity @e[type=rwm:cannon,tag=cannon_1] fire
execute @s[tag=!cannon_1] ~ ~ ~ detect 0 0 0 concrete 2 tag @s add cannon_1

# Yellow cannon
execute @s[tag=cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 playsound item.shield.block @a ~ ~ ~ 1 1 1
execute @s[tag=cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cannon,tag=cannon_2] ~ ~ ~ particle rwm:big_barrier ~ ~7 ~
execute @s[tag=!cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s queue_tick 110
execute @s[tag=!cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var2 110
execute @s[tag=!cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var3 2
execute @s[tag=!cannon_2,scores={var1=2}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var4 1
execute @s[tag=!cannon_2,scores={var1=2}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players add @s var1 1
execute @s[tag=!cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 event entity @e[type=rwm:cannon,tag=cannon_2] fire
execute @s[tag=!cannon_2] ~ ~ ~ detect 0 0 0 concrete 4 tag @s add cannon_2

# Cyan cannon
execute @s[tag=cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 playsound item.shield.block @a ~ ~ ~ 1 1 1
execute @s[tag=cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cannon,tag=cannon_3] ~ ~ ~ particle rwm:big_barrier ~ ~7 ~
execute @s[tag=!cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s queue_tick 110
execute @s[tag=!cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var2 110
execute @s[tag=!cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var3 3
execute @s[tag=!cannon_3,scores={var1=0}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var4 1
execute @s[tag=!cannon_3,scores={var1=0}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var1 1
execute @s[tag=!cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 event entity @e[type=rwm:cannon,tag=cannon_3] fire
execute @s[tag=!cannon_3] ~ ~ ~ detect 0 0 0 concrete 3 tag @s add cannon_3

# Lime cannon
execute @s[tag=cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 playsound item.shield.block @a ~ ~ ~ 1 1 1
execute @s[tag=cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cannon,tag=cannon_4] ~ ~ ~ particle rwm:big_barrier ~ ~7 ~
execute @s[tag=!cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s queue_tick 110
execute @s[tag=!cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var2 110
execute @s[tag=!cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var3 4
execute @s[tag=!cannon_4,scores={var1=1}] ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var4 1
execute @s[tag=!cannon_4,scores={var1=1}] ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players add @s var1 1
execute @s[tag=!cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 event entity @e[type=rwm:cannon,tag=cannon_4] fire
execute @s[tag=!cannon_4] ~ ~ ~ detect 0 0 0 concrete 5 tag @s add cannon_4

# Firing cannons!
execute @s[scores={var2=100}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1 1
execute @s[scores={var2=90}] ~ ~ ~ playsound beacon.activate @a ~ ~ ~ 0.3 1.5 0.3
execute @s[scores={var2=60}] ~ ~ ~ playsound firework.large_blast @a ~ ~ ~ 1 1 1
execute @s[scores={var2=70..90,var3=1}] ~ ~ ~ particle rwm:cannon_charge_1 213 47 -576
execute @s[scores={var2=70..90,var3=2}] ~ ~ ~ particle rwm:cannon_charge_2 213 47 -600
execute @s[scores={var2=70..90,var3=3}] ~ ~ ~ particle rwm:cannon_charge_3 237 47 -600
execute @s[scores={var2=70..90,var3=4}] ~ ~ ~ particle rwm:cannon_charge_4 237 47 -576
execute @s[scores={var2=40..60,var3=1}] ~ ~ ~ particle rwm:cannon_blast_1 225 53.5 -588
execute @s[scores={var2=40..60,var3=2}] ~ ~ ~ particle rwm:cannon_blast_2 225 53.5 -588
execute @s[scores={var2=40..60,var3=3}] ~ ~ ~ particle rwm:cannon_blast_3 225 53.5 -588
execute @s[scores={var2=40..60,var3=4}] ~ ~ ~ particle rwm:cannon_blast_4 225 53.5 -588
# Failure
execute @s[scores={var2=40,var4=0}] ~ ~ ~ playsound item.shield.block @a ~ ~ ~ 1 1 1
execute @s[scores={var2=40,var4=0,var1=0}] ~ ~ ~ event entity @e[type=rwm:time_onion] block_ring_1
execute @s[scores={var2=40,var4=0,var1=1}] ~ ~ ~ event entity @e[type=rwm:time_onion] block_ring_2
execute @s[scores={var2=40,var4=0,var1=2}] ~ ~ ~ event entity @e[type=rwm:time_onion] block_ring_3
execute @s[scores={var2=40,var4=0,var1=3}] ~ ~ ~ event entity @e[type=rwm:time_onion] block_ring_4
# Success
execute @s[scores={var2=40,var4=1}] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={var2=40,var4=1,var1=1}] ~ ~ ~ event entity @e[type=rwm:time_onion] explode_ring_1
execute @s[scores={var2=40,var4=1,var1=2}] ~ ~ ~ event entity @e[type=rwm:time_onion] explode_ring_2
execute @s[scores={var2=40,var4=1,var1=3}] ~ ~ ~ event entity @e[type=rwm:time_onion] explode_ring_3
execute @s[scores={var2=40,var4=1,var1=4}] ~ ~ ~ event entity @e[type=rwm:time_onion] explode_ring_4
execute @s[scores={var2=20,var4=1}] ~ ~ ~ playsound mob.irongolem.hit @a ~ ~ ~ 1 1.5 1
execute @s[scores={var2=20,var4=1,var1=1}] ~ ~ ~ setblock 227 46 -590 air
execute @s[scores={var2=20,var4=1,var1=2}] ~ ~ ~ setblock 228 45 -586 air
execute @s[scores={var2=20,var4=1,var1=3}] ~ ~ ~ setblock 223 46 -590 air
execute @s[scores={var2=20,var4=1,var1=4}] ~ ~ ~ setblock 222 45 -586 air
execute @s[scores={var2=20,var4=1,var1=1}] ~ ~ ~ execute @e[tag=agent3] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={var2=20,var4=1,var1=2}] ~ ~ ~ execute @e[tag=agent4] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={var2=20,var4=1,var1=3}] ~ ~ ~ execute @e[tag=agent2] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={var2=20,var4=1,var1=4}] ~ ~ ~ execute @e[tag=agent1] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={var2=20,var4=1,var1=1}] ~ ~ ~ tag @e[tag=agent3] add stunned
execute @s[scores={var2=20,var4=1,var1=2}] ~ ~ ~ tag @e[tag=agent4] add stunned
execute @s[scores={var2=20,var4=1,var1=3}] ~ ~ ~ tag @e[tag=agent2] add stunned
execute @s[scores={var2=20,var4=1,var1=4}] ~ ~ ~ tag @e[tag=agent1] add stunned
execute @s[scores={var2=20,var4=1,var1=1}] ~ ~ ~ event entity @e[tag=agent3] lookat_remove
execute @s[scores={var2=20,var4=1,var1=2}] ~ ~ ~ event entity @e[tag=agent4] lookat_remove
execute @s[scores={var2=20,var4=1,var1=3}] ~ ~ ~ event entity @e[tag=agent2] lookat_remove
execute @s[scores={var2=20,var4=1,var1=4}] ~ ~ ~ event entity @e[tag=agent1] lookat_remove
execute @s[scores={var2=20,var4=1,var1=1}] ~ ~ ~ event entity @e[type=rwm:time_onion] hide_ring_1
execute @s[scores={var2=20,var4=1,var1=2}] ~ ~ ~ event entity @e[type=rwm:time_onion] hide_ring_2
execute @s[scores={var2=20,var4=1,var1=3}] ~ ~ ~ event entity @e[type=rwm:time_onion] hide_ring_3
execute @s[scores={var2=20,var4=1,var1=4}] ~ ~ ~ event entity @e[type=rwm:time_onion] hide_ring_4

execute @s[scores={var2=0,second=0}] ~ ~ ~ particle rwm:cannon_charge_1 213 46 -576
execute @s[scores={var2=0,second=5}] ~ ~ ~ particle rwm:cannon_charge_2 213 46 -600
execute @s[scores={var2=0,second=10}] ~ ~ ~ particle rwm:cannon_charge_3 237 46 -600
execute @s[scores={var2=0,second=15}] ~ ~ ~ particle rwm:cannon_charge_4 237 46 -576

execute @s[scores={var2=1}] ~ ~ ~ scoreboard players set @s var4 0
scoreboard players remove @s[scores={var2=1..}] var2 1

# Code stops running
execute @s[tag=end_signal,scores={var1=4}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=110600}] ~ ~ ~ scoreboard players add @s address 2