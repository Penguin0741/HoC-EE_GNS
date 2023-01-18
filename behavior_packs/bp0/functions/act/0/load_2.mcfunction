
function clear_entities

summon rwm:start -12 56 -324

execute @s -12 41 -326 summon npc ~ ~ ~ npc
execute @s -12 41 -326 event entity @e[type=npc,c=1,tag=!old] variant19
execute @s -12 41 -326 tag @e[type=npc,c=1,tag=!old] add tutcontrols

execute @s -12 60 -262 summon npc ~ ~ ~ npc
execute @s -12 60 -262 event entity @e[type=npc,c=1,tag=!old] variant19
execute @s -12 60 -262 tag @e[type=npc,c=1,tag=!old] add tutskip

execute @s -12 60 -218 summon npc ~ ~ ~ npc
execute @s -12 60 -218 event entity @e[type=npc,c=1,tag=!old] variant19
execute @s -12 60 -218 tag @e[type=npc,c=1,tag=!old] add tuthelp

execute @s 0 70 0 summon rwm:host ~ ~ ~ npc
execute @s 0 70 0 dialogue change @e[type=rwm:host,c=1,tag=!old] npc.tuthost.1
execute @s 0 70 0 tag @e[type=rwm:host,c=1,tag=!old] add tuthost

summon rwm:knockback_area -8 67 -203
summon rwm:knockback_area -3 67 -209
summon rwm:knockback_area -21 67 -209
summon rwm:knockback_area -16 67 -203