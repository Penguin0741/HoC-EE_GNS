
execute @s[scores={var1=0,path=1},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:time_agent,tag=agent5] @s npc.boss.green.1.1
execute @s[scores={var1=0,path=2},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:time_agent,tag=agent5] @s npc.boss.yellow.1.1
execute @s[scores={var1=0,path=3},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:time_agent,tag=agent5] @s npc.boss.red.1.1

execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1