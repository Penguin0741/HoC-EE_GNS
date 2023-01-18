
scoreboard players set @a address 100400
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

# Despawn cursor
event entity @e[type=rwm:cursor] despawn

# Swap out fake agent with real agent
tp @c 25 70 32
tp @e[type=rwm:fake_agent] 25 60 32
setblock 25 73 32 barrier