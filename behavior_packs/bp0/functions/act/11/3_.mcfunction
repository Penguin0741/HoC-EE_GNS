
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.11.3"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.11.3"}]}

execute @s[scores={path=2},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.yellow.3.1
execute @s[scores={path=3},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.red.3.1

# Change to in-activity state when entering an area
execute @s ~ ~ ~ detect ~ 0 ~ concrete 1 scoreboard players set @s boss_activity 1
execute @s ~ ~ ~ detect ~ 0 ~ concrete 2 scoreboard players set @s boss_activity 2
execute @s ~ ~ ~ detect ~ 0 ~ concrete 3 scoreboard players set @s boss_activity 3
execute @s ~ ~ ~ detect ~ 0 ~ concrete 4 scoreboard players set @s boss_activity 4
execute @s[scores={boss_activity=1..}] ~ ~ ~ function act/11/4

execute @s[tag=!side_room_1,x=198,y=42,z=-561,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/3_side_room_1
execute @s[tag=!side_room_1,x=198,y=42,z=-565,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/3_side_room_1
execute @s[tag=!side_room_2,x=198,y=42,z=-615,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/3_side_room_2
execute @s[tag=!side_room_2,x=198,y=42,z=-615,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/3_side_room_2
execute @s[tag=!side_room_3,x=248,y=42,z=-615,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/3_side_room_3
execute @s[tag=!side_room_3,x=252,y=42,z=-615,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/3_side_room_3
execute @s[tag=!side_room_4,x=248,y=42,z=-561,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/3_side_room_4
execute @s[tag=!side_room_4,x=252,y=42,z=-565,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/3_side_room_4