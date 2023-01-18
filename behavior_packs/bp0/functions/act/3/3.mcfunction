
scoreboard players set @a address 30303
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

event entity @e[type=rwm:cursor] despawn

setblock 40 72 167 air
execute @s[tag=!queen] ~ ~ ~ setblock 14 72 170 polished_blackstone_button 1
execute @s[tag=!queen] ~ ~ ~ fill 13 72 169 13 76 163 air