
# Keep trying to open tut start dialogue until it opens successfully
execute @s[tag=!started] ~ ~ ~ dialogue open @e[tag=tutcontrols] @s npc.tutcontrols.1

execute @s[tag=replay] ~ ~ ~ function act/0/-1