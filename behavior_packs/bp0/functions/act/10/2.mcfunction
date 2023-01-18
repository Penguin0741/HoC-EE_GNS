
scoreboard players set @a address 100200
scoreboard players set @a tick 0
scoreboard players set @a hint 600
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

tag @a remove dlgopened

# Fake agent npc
setblock 25 70 32 light_block 12
summon rwm:fake_agent 25 70 32
execute @e[type=rwm:fake_agent] ~ ~ ~ tp @s ~ ~ ~ 180 0