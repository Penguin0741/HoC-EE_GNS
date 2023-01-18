
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:medium_barrier 44 74 170
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 75 169 air
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 75 170 rwm:mosaic_1
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 75 171 rwm:mosaic_2
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 74 171 rwm:mosaic_3
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 74 169 rwm:mosaic_4
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 74 170 rwm:mosaic_5
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 73 171 rwm:mosaic_6
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 73 169 rwm:mosaic_7
execute @s[scores={tick=1}] ~ ~ ~ setblock 45 73 170 rwm:mosaic_8
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
