
scoreboard players set @a address 110400
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 0
scoreboard players set @a var2 0
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

tag @s remove dlgopened

execute @s[scores={boss_activity=1}] ~ ~ ~ tp @c 167 58 -551 270 0
execute @s[scores={boss_activity=2}] ~ ~ ~ tp @c 194 47 -632 90 0
execute @s[scores={boss_activity=3}] ~ ~ ~ tp @c 256 46 -632 270 0
execute @s[scores={boss_activity=4}] ~ ~ ~ tp @c 246 46 -528 180 0

execute @s[tag=!dlg_agent] ~ ~ ~ dialogue open @e[type=rwm:fake_agent] @s npc.boss.agent.1
tag @s add dlg_agent