
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect -118 75 120 air 0 particle rwm:barrier -118 75.5 120
execute @s[scores={tick=60}] ~ ~ ~ detect -122 75 120 air 0 particle rwm:barrier -122 75.5 120
execute @s[scores={tick=60}] ~ ~ ~ detect -120 75 122 air 0 particle rwm:barrier -120 75.5 122
execute @s[scores={tick=60}] ~ ~ ~ detect -118 75 124 air 0 particle rwm:barrier -118 75.5 124
execute @s[scores={tick=60}] ~ ~ ~ detect -122 75 124 air 0 particle rwm:barrier -122 75.5 124
execute @s[scores={tick=60}] ~ ~ ~ detect -118 75 120 gold_block 0 particle rwm:checkmark -118 76 120
execute @s[scores={tick=60}] ~ ~ ~ detect -122 75 120 gold_block 0 particle rwm:checkmark -122 76 120
execute @s[scores={tick=60}] ~ ~ ~ detect -120 75 122 gold_block 0 particle rwm:checkmark -120 76 122
execute @s[scores={tick=60}] ~ ~ ~ detect -118 75 124 gold_block 0 particle rwm:checkmark -118 76 124
execute @s[scores={tick=60}] ~ ~ ~ detect -122 75 124 gold_block 0 particle rwm:checkmark -122 76 124
execute @s[scores={tick=1}] ~ ~ ~ setblock -118 75 120 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -122 75 120 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -120 75 122 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -118 75 124 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -122 75 124 air
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -118 105 120
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_5_ew_u -120 76 119
particle rwm:border_5_ew_u -120 76 124
particle rwm:border_5_ns_u -118 76 122
particle rwm:border_5_ns_u -123 76 122