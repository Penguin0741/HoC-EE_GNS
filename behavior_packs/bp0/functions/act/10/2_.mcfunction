
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.2"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.2"}]}

execute @s[scores={var1=80}] ~ ~ ~ playsound mob.zombie.wood @a ~ ~ ~ 0.2 1 0.2
execute @s[scores={var1=80}] ~ ~ ~ particle rwm:knock 25 71.5 32
execute @s[scores={var1=20}] ~ ~ ~ playsound mob.zombie.wood @a ~ ~ ~ 0.2 1 0.2
execute @s[scores={var1=20}] ~ ~ ~ particle rwm:knock 25 71.5 32
execute @s[scores={var1=10}] ~ ~ ~ playsound mob.zombie.wood @a ~ ~ ~ 0.2 1 0.2
execute @s[scores={var1=10}] ~ ~ ~ particle rwm:knock 25 71.5 32

execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1
execute @s[scores={var1=0}] ~ ~ ~ scoreboard players set @s var1 120

execute @s[scores={hint=0,second=0}] ~ ~ ~ particle rwm:guide 22 72 23
execute @s[scores={hint=0,second=0}] ~ ~ ~ particle rwm:guide 24 72 24
execute @s[scores={hint=0,second=0}] ~ ~ ~ particle rwm:guide 25 72 26
execute @s[scores={hint=0,second=0}] ~ ~ ~ particle rwm:guide 25 72 28
execute @s[scores={hint=0,second=0}] ~ ~ ~ particle rwm:guide 25 72 30

particle rwm:border_3_ew_u 25 72 33
particle rwm:border_3_ew_u 25 72 28
particle rwm:border_5_ns_u 26 72 31
particle rwm:border_5_ns_u 23 72 31

execute @s[x=19,y=72,z=27,dx=12,dy=2,dz=8] ~ ~ ~ function act/10/3