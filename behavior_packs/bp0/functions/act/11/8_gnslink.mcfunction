execute @s[scores={cam.tick=20}] ~ ~ ~ effect @s blindness 1000000 0 true

execute @s[scores={cam.tick=2}] 228 43 -551 kill @e[type=npc,r=1]
execute @s[scores={cam.tick=2}] 222 43 -551 kill @e[type=npc,r=1]

execute @s[scores={cam.tick=1}] 228 43 -551 structure load gns:botgreen ~ ~-1 ~
execute @s[scores={cam.tick=1}] 228 43 -551 tag @e[type=npc,c=1,tag=!old] add bot.green

execute @s[scores={cam.tick=1}] 222 43 -551 structure load gns:botyellow ~ ~-1 ~
execute @s[scores={cam.tick=1}] 222 43 -551 tag @e[type=npc,c=1,tag=!old] add bot.yellow

execute @s[scores={cam.tick=0,path=1}] ~ ~ ~ dialogue open @e[tag=bot.green] @s
execute @s[scores={cam.tick=0,path=2}] ~ ~ ~ dialogue open @e[tag=bot.yellow] @s

scoreboard players set @a[scores={cam.tick=0},tag=main_player] cam.next 32

scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1