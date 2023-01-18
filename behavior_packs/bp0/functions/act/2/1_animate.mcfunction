
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 180

execute @s[scores={tick=180}] ~ ~ ~ scoreboard players operation @s var5 = @s var1
execute @s[scores={tick=150,var1=1}] ~ ~ ~ playsound armor.equip_generic @a ~ ~ ~ 1 1 1
execute @s[scores={tick=150,var1=1}] ~ ~ ~ event entity @e[type=rwm:bread_step_1] jiggle
execute @s[scores={tick=140,var1=1}] ~ ~ ~ event entity @e[type=rwm:zombie_chef] item_1
execute @s[scores={tick=140,var1=0}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=140,var1=2..4}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=140}] ~ ~ ~ scoreboard players operation @s var5 = @s var2
execute @s[scores={tick=110,var2=2}] ~ ~ ~ playsound armor.equip_generic @a ~ ~ ~ 1 1 1
execute @s[scores={tick=110,var2=2}] ~ ~ ~ event entity @e[type=rwm:bread_step_2] jiggle
execute @s[scores={tick=100,var2=2}] ~ ~ ~ event entity @e[type=rwm:zombie_chef] item_2
execute @s[scores={tick=100,var2=0..1}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=100,var2=3..4}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=100}] ~ ~ ~ scoreboard players operation @s var5 = @s var3
execute @s[scores={tick=60,var3=3}] ~ ~ ~ playsound armor.equip_generic @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60,var3=3}] ~ ~ ~ event entity @e[type=rwm:bread_step_3] jiggle
execute @s[scores={tick=60,var3=3}] ~ ~ ~ event entity @e[type=rwm:zombie_chef] item_3
execute @s[scores={tick=60,var3=0..2}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=60,var3=4}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=60}] ~ ~ ~ scoreboard players operation @s var5 = @s var4
execute @s[scores={tick=20,var4=4}] ~ ~ ~ playsound mob.blaze.shoot @a ~ ~ ~ 1 1 1
execute @s[scores={tick=20,var4=4}] ~ ~ ~ particle rwm:fire_bread 19 72 134
execute @s[scores={tick=20,var4=4}] ~ ~ ~ event entity @e[type=rwm:zombie_chef] item_4
execute @s[scores={tick=20,var4=0..3}] ~ ~ ~ scoreboard players set @s tick 1000
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=20}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=20}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ function act/2/2

execute @s[scores={tick=1000}] ~ ~ ~ playsound mob.villager.no @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=1000}] ~ ~ ~ execute @e[type=rwm:zombie_chef] ~ ~ ~ particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=940}] ~ ~ ~ scoreboard players remove @s address 1
execute @s[scores={tick=940}] ~ ~ ~ scoreboard players set @s var5 5
execute @s[scores={tick=940}] ~ ~ ~ scoreboard players set @s tick 0

execute @s[scores={var5=1..}] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[scores={var5=1}] ~ ~ ~ summon rwm:utility 17 71 126
execute @s[scores={var5=2}] ~ ~ ~ summon rwm:utility 17 71 128
execute @s[scores={var5=3}] ~ ~ ~ summon rwm:utility 17 71 130
execute @s[scores={var5=4}] ~ ~ ~ summon rwm:utility 19 71 133
execute @s[scores={var5=5}] ~ ~ ~ summon rwm:utility 17 71 124
execute @s[scores={var5=1..}] ~ ~ ~ event entity @e[type=rwm:zombie_chef] add_goto
execute @s[scores={var5=1..}] ~ ~ ~ tag @e[type=rwm:utility,tag=!game] add target
execute @s[scores={var5=5}] ~ ~ ~ tag @e[tag=target] add reset
execute @s[scores={var5=1..}] ~ ~ ~ scoreboard players set @s var5 0

# Snap zombie chef to targets
execute @e[type=rwm:zombie_chef] ~ ~ ~ execute @e[tag=target,r=1] ~ ~ ~ function act/2/1_found_target