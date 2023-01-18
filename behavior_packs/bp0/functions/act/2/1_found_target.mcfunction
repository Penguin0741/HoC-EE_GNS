
execute @s[tag=reset] ~ ~ ~ event entity @e[type=rwm:zombie_chef,c=1] despawn
execute @s[tag=reset] ~ ~ ~ tag @e[type=rwm:zombie_chef] add old
execute @s[tag=reset] ~ ~ ~ tp @e[type=rwm:zombie_chef] 0 64 0
execute @s[tag=reset] ~ ~ ~ summon rwm:zombie_chef ~ ~0.1 ~ npc
execute @s[tag=reset] ~ ~ ~ dialogue change @e[type=rwm:zombie_chef,tag=!old] npc.zombie_chef.0

execute @s[tag=!reset] ~ ~ ~ event entity @e[type=rwm:zombie_chef,c=1] remove_goto
execute @s[tag=!reset] ~ ~ ~ tp @e[type=rwm:zombie_chef,c=1] ~ ~0.1 ~ 270 0

event entity @s despawn