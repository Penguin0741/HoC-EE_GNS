execute @s[scores={cam.tick=2}] -17 71 -148 kill @e[type=npc,r=1]
execute @s[scores={cam.tick=2}] -7 71 -148 kill @e[type=npc,r=1]

execute @s[scores={cam.tick=1}] -17 71 -148 structure load gns:botgreen ~ ~-1 ~
execute @s[scores={cam.tick=1}] -17 71 -148 tag @e[type=npc,c=1,tag=!old] add bot.green

execute @s[scores={cam.tick=1}] -7 71 -148 structure load gns:botyellow ~ ~-1 ~
execute @s[scores={cam.tick=1}] -7 71 -148 tag @e[type=npc,c=1,tag=!old] add bot.yellow

execute @s[scores={cam.tick=0,path=1}] ~ ~ ~ dialogue open @e[tag=bot.green] @s
execute @s[scores={cam.tick=0,path=2}] ~ ~ ~ dialogue open @e[tag=bot.yellow] @s

scoreboard players set @a[scores={cam.tick=0},tag=main_player] cam.next 16

scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1