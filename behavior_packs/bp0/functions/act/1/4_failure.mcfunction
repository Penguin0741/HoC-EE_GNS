
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:medium_barrier 41 75 81
execute @s[scores={tick=1}] ~ ~ ~ fill 42 74 78 42 76 84 air
execute @s[scores={tick=1}] ~ ~ ~ fill 42 74 80 42 74 82 lit_pumpkin 1
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] 42 104 83
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ud_w_2 42 75 84
particle rwm:border_3_ud_w_2 42 75 77
particle rwm:border_7_ns_w 41 74 81
particle rwm:border_7_ns_w_2 42 77 81

execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ns_w 41 74 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ns_w 41 75 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ud_w 41 74 82
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ud_w 41 74 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ns_w 41 74 79
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ns_w 41 75 79
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ud_w 41 74 78
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ud_w 41 74 79