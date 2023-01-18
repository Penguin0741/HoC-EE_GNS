
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -133 83 50
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -133 83 49
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -131 83 45
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -130 83 45
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -126 83 45
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -125 83 45
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -123 83 49
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -123 83 50
execute @s[scores={tick=1}] ~ ~ ~ fill -134 81 49 -134 81 50 stone
execute @s[scores={tick=1}] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[scores={tick=1}] ~ ~ ~ fill -125 81 44 -126 81 44 stone
execute @s[scores={tick=1}] ~ ~ ~ fill -122 81 50 -122 81 49 stone
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 30
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
