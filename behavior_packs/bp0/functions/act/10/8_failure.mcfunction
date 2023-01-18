
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @c ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=1}] ~ ~ ~ fill 39 71 31 40 71 33 gold_block
execute @s[scores={tick=1}] ~ ~ ~ tp @c 25 72 32 270 0
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=click_detector] 25 72 32
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
