
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ function act/11/5_cannon_1
execute @s[scores={tick=100}] ~ ~ ~ function act/11/5_cannon_2
execute @s[scores={tick=100}] ~ ~ ~ function act/11/5_cannon_3
execute @s[scores={tick=100}] ~ ~ ~ function act/11/5_cannon_4
execute @s[scores={tick=100}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 0.6 1
execute @s[scores={tick=70}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=50}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=40}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=20}] ~ ~ ~ playsound beacon.activate @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3