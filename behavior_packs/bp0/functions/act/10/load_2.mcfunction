
function clear_entities
effect @s blindness 2 0 true

tp @a 25 72 17 0 0

tp @e[type=rwm:notebook] 25 60 17

execute @s[tag=!replay] ~ ~ ~ summon rwm:notebook_item 21 73 24
execute @s[tag=!replay] ~ ~ ~ event entity @e[type=rwm:notebook_item,tag=!old] rot180
execute @s[tag=!replay] ~ ~ ~ dialogue change @e[type=rwm:notebook_item,tag=!old] npc.notebook.0
execute @s[tag=!replay] ~ ~ ~ event entity @e[type=rwm:notebook_item,tag=!old] always_show_name

summon rwm:utility 25 71 32

summon rwm:utility 24 71 16
summon rwm:utility 24 71 17
summon rwm:utility 24 71 18
summon rwm:utility 25 71 16
summon rwm:utility 25 71 17
summon rwm:utility 25 71 18
summon rwm:utility 26 71 16
summon rwm:utility 26 71 17
summon rwm:utility 26 71 18

summon rwm:utility 26 78 31
summon rwm:utility 26 78 33
summon rwm:utility 24 78 31
summon rwm:utility 24 78 33
tag @e[type=rwm:utility,tag=!game] add blocker
event entity @e[type=rwm:utility,tag=!game] blocker

setblock 25 60 32 light_block 15
setblock 31 73 35 iron_block
setblock 21 73 24 air
setblock 31 73 34 air

setblock 25 71 32 trapdoor 4
setblock 26 79 31 trapdoor 3
setblock 26 79 33 trapdoor 3
setblock 24 79 33 trapdoor 3
setblock 24 79 31 trapdoor 3

time set midnight

