
scoreboard players set @a address 100500
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

tag @a remove dlgopened

# Close vent
setblock 25 71 32 trapdoor 4
setblock 25 73 32 air

# Despawn cursor
event entity @e[type=rwm:cursor] despawn

# Open green door
fill 9 75 33 10 72 31 air

# Summon click detector for next phase
summon rwm:utility 25 72 32
tag @e[type=rwm:utility,tag=!game,tag=!blocker] add click_detector
event entity @e[type=rwm:utility,tag=!game,tag=!blocker] click_detector