
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 53 air 0 particle rwm:barrier -52 71 53
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 54 air 0 particle rwm:barrier -52 71 54
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 55 air 0 particle rwm:barrier -54 71 55
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 56 air 0 particle rwm:barrier -54 71 56
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 57 air 0 particle rwm:barrier -52 71 57
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 58 air 0 particle rwm:barrier -52 71 58
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 53 water -1 particle rwm:barrier -52 71 53
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 54 water -1 particle rwm:barrier -52 71 54
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 55 water -1 particle rwm:barrier -54 71 55
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 56 water -1 particle rwm:barrier -54 71 56
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 57 water -1 particle rwm:barrier -52 71 57
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 58 water -1 particle rwm:barrier -52 71 58
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 53 gold_block 0 particle rwm:checkmark -52 72 53
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 54 gold_block 0 particle rwm:checkmark -52 72 54
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 55 gold_block 0 particle rwm:checkmark -54 72 55
execute @s[scores={tick=60}] ~ ~ ~ detect -54 71 56 gold_block 0 particle rwm:checkmark -54 72 56
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 57 gold_block 0 particle rwm:checkmark -52 72 57
execute @s[scores={tick=60}] ~ ~ ~ detect -52 71 58 gold_block 0 particle rwm:checkmark -52 72 58
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ structure load "room5:channelwater2" -55 70 47
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -52 101 52
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_7_ns_u -56 73 56
particle rwm:border_7_ns_u -51 73 56
particle rwm:border_5_ew_u -53 73 51
particle rwm:border_5_ew_u -53 73 59