
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 190

execute @s[scores={tick=190}] ~ ~ ~ fill 45 73 169 45 75 171 coal_block
execute @s[scores={tick=190}] ~ ~ ~ setblock 45 75 169 rwm:mosaic_1
execute @s[scores={tick=180}] ~ ~ ~ setblock 45 75 170 rwm:mosaic_2
execute @s[scores={tick=170}] ~ ~ ~ setblock 45 75 171 rwm:mosaic_3
execute @s[scores={tick=160}] ~ ~ ~ setblock 45 74 169 rwm:mosaic_4
execute @s[scores={tick=150}] ~ ~ ~ setblock 45 74 170 rwm:mosaic_5
execute @s[scores={tick=140}] ~ ~ ~ setblock 45 74 171 rwm:mosaic_6
execute @s[scores={tick=130}] ~ ~ ~ setblock 45 73 169 air
execute @s[scores={tick=120}] ~ ~ ~ setblock 45 73 170 rwm:mosaic_7
execute @s[scores={tick=110}] ~ ~ ~ setblock 45 73 171 rwm:mosaic_8
execute @s[scores={tick=190}] ~ ~ ~ particle rwm:sparkle 44 75 169
execute @s[scores={tick=180}] ~ ~ ~ particle rwm:sparkle 44 75 170
execute @s[scores={tick=170}] ~ ~ ~ particle rwm:sparkle 44 75 171
execute @s[scores={tick=160}] ~ ~ ~ particle rwm:sparkle 44 74 169
execute @s[scores={tick=150}] ~ ~ ~ particle rwm:sparkle 44 74 170
execute @s[scores={tick=140}] ~ ~ ~ particle rwm:sparkle 44 74 171
execute @s[scores={tick=130}] ~ ~ ~ particle rwm:sparkle 44 73 169
execute @s[scores={tick=120}] ~ ~ ~ particle rwm:sparkle 44 73 170
execute @s[scores={tick=110}] ~ ~ ~ particle rwm:sparkle 44 73 171
execute @s[scores={tick=190}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.03 1
execute @s[scores={tick=180}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.06 1
execute @s[scores={tick=170}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.09 1
execute @s[scores={tick=160}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.12 1
execute @s[scores={tick=150}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.15 1
execute @s[scores={tick=140}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.18 1
execute @s[scores={tick=130}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.21 1
execute @s[scores={tick=120}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.24 1
execute @s[scores={tick=110}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.27 1
execute @s[scores={tick=100}] ~ ~ ~ fill 46 73 172 46 75 172 redstone_block
execute @s[scores={tick=95}] ~ ~ ~ fill 46 73 172 46 75 172 air
execute @s[scores={tick=90}] ~ ~ ~ fill 46 76 171 46 76 169 redstone_block
execute @s[scores={tick=85}] ~ ~ ~ fill 46 76 171 46 76 169 air
execute @s[scores={tick=80}] ~ ~ ~ fill 46 73 168 46 75 168 redstone_block
execute @s[scores={tick=75}] ~ ~ ~ fill 46 73 168 46 75 168 air
execute @s[scores={tick=70}] ~ ~ ~ scoreboard players remove @s address 3