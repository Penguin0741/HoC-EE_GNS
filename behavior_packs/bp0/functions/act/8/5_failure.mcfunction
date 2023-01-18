
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:zombie_minion] add_goto
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 186 air 0 particle rwm:barrier -115 77 186
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 187 air 0 particle rwm:barrier -115 77 187
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 188 air 0 particle rwm:barrier -115 77 188
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 189 air 0 particle rwm:barrier -115 77 189
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 186 gold_block 0 particle rwm:checkmark -115 77 186
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 187 gold_block 0 particle rwm:checkmark -115 77 187
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 188 gold_block 0 particle rwm:checkmark -115 77 188
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 189 gold_block 0 particle rwm:checkmark -115 77 189
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 186 gold_block 0 setblock -115 77 186 concretepowder 4
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 187 gold_block 0 setblock -115 77 187 concretepowder 4
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 188 gold_block 0 setblock -115 77 188 concretepowder 4
execute @s[scores={tick=60}] ~ ~ ~ detect -115 77 189 gold_block 0 setblock -115 77 189 concretepowder 4
execute @s[scores={tick=1..60}] ~ ~ ~ fill -115 72 189 -115 76 186 air 0 replace concretepowder
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:zombie_minion] remove_goto
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:zombie_minion] -115 78 185
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -115 107 186
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
