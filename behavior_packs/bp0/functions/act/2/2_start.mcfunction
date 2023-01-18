
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=100}] ~ ~ ~ fill 15 75 129 15 75 125 barrier
execute @s[scores={tick=90}] ~ ~ ~ fill 15 74 129 15 74 125 barrier
execute @s[scores={tick=80}] ~ ~ ~ fill 15 73 129 15 73 125 barrier
execute @s[scores={tick=70}] ~ ~ ~ fill 15 72 129 15 75 125 barrier
execute @s[scores={tick=70}] ~ ~ ~ scoreboard players remove @s address 3
