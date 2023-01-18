
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @c ~ ~ ~ detect ~ ~1 ~ air 0 particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @c ~ ~ ~ detect ~ ~1 ~ light_block -1 particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @c ~ ~ ~ detect ~ ~1 ~ stained_glass -1 particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @c ~ ~ ~ detect ~ ~1 ~ waxed_copper -1 particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ setblock 168 52 -551 lever 2
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ setblock 191 47 -630 lever 1
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ setblock 259 46 -630 lever 2
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ setblock 246 45 -541 lever 3
execute @s[scores={tick=1,boss_activity=1}] ~ ~ ~ tp @c 167 58 -551
execute @s[scores={tick=1,boss_activity=2}] ~ ~ ~ tp @c 194 47 -632
execute @s[scores={tick=1,boss_activity=3}] ~ ~ ~ tp @c 256 46 -632
execute @s[scores={tick=1,boss_activity=4}] ~ ~ ~ tp @c 246 46 -528
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
