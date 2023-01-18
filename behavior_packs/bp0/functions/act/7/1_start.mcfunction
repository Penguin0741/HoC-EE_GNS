
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 40

execute @s[scores={tick=40}] ~ ~ ~ fill -100 82 62 -100 81 62 air
execute @s[scores={tick=40}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=35}] ~ ~ ~ playsound note.chime @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=32}] ~ ~ ~ playsound note.chime @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=25}] ~ ~ ~ playsound note.chime @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=10}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -104 81 59
execute @s[scores={tick=10}] ~ ~ ~ playsound mob.endermen.portal @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3