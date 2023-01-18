
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ detect -31 72 171 concrete 0 setblock -31 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -33 72 171 concrete 0 setblock -33 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -35 72 171 concrete 0 setblock -35 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -37 72 171 concrete 0 setblock -37 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -31 72 171 concrete 4 setblock -31 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -33 72 171 concrete 4 setblock -33 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -35 72 171 concrete 4 setblock -35 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -37 72 171 concrete 4 setblock -37 72 171 concrete 14
execute @s[scores={tick=60}] ~ ~ ~ detect -31 72 171 concrete 14 particle rwm:barrier -31 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -33 72 171 concrete 14 particle rwm:barrier -33 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -35 72 171 concrete 14 particle rwm:barrier -35 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -37 72 171 concrete 14 particle rwm:barrier -37 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -31 72 171 concrete 5 particle rwm:checkmark -31 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -33 72 171 concrete 5 particle rwm:checkmark -33 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -35 72 171 concrete 5 particle rwm:checkmark -35 74 170
execute @s[scores={tick=60}] ~ ~ ~ detect -37 72 171 concrete 5 particle rwm:checkmark -37 74 170
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ setblock -31 72 171 concrete 0
execute @s[scores={tick=1}] ~ ~ ~ setblock -33 72 171 concrete 0
execute @s[scores={tick=1}] ~ ~ ~ setblock -35 72 171 concrete 0
execute @s[scores={tick=1}] ~ ~ ~ setblock -37 72 171 concrete 0
execute @s[scores={tick=1}] ~ ~ ~ setblock -31 73 171 hopper
execute @s[scores={tick=1}] ~ ~ ~ setblock -33 73 171 hopper
execute @s[scores={tick=1}] ~ ~ ~ setblock -35 73 171 hopper
execute @s[scores={tick=1}] ~ ~ ~ setblock -37 73 171 hopper
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
