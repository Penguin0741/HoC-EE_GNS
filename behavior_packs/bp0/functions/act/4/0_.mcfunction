
tag @s remove in_area
tag @s[x=-52,y=75,z=123,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

execute @s[tag=!dlgopened,scores={var1=0..3}] ~ ~ ~ dialogue open @e[type=rwm:fake_agent,c=1] @s npc.agent.yellow.8.1

execute @s[scores={var1=0}] ~ ~ ~ particle rwm:sparkle -52 75 123
execute @s[scores={var1=0,second=0},tag=in_area] ~ ~ ~ particle rwm:interact -52 75 122

execute @s[scores={var1=0}] ~ ~ ~ detect -52 75 123 wooden_button 9 function act/4/1

# Load sequence
execute @s[scores={var1=120}] ~ ~ ~ function act/4/load_1
execute @s[scores={var1=120}] ~ ~ ~ effect @s blindness 99999 1 true
execute @s[scores={var1=120}] ~ ~ ~ effect @s slowness 99999 1 true
execute @s[scores={var1=120}] ~ ~ ~ playsound portal.trigger @a ~ ~ ~ 1 1 1
execute @s[scores={var1=21..120,path=1}] ~ ~ ~ particle rwm:teleporter_green ~ ~ ~
execute @s[scores={var1=21..120,path=2}] ~ ~ ~ particle rwm:teleporter_yellow ~ ~ ~
execute @s[scores={var1=21..120,path=3}] ~ ~ ~ particle rwm:teleporter_red ~ ~ ~
execute @s[scores={var1=120}] ~ ~ ~ titleraw @s times 0 100 0
execute @s[scores={var1=120}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={var1=120}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.1"}]}
execute @s[scores={var1=100}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.2"}]}
execute @s[scores={var1=80}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.3"}]}
execute @s[scores={var1=60}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.4"}]}
execute @s[scores={var1=40}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.5"}]}
execute @s[scores={var1=22}] ~ ~ ~ detect -63 65 109 air 0 scoreboard players add @s var1 1
execute @s[scores={var1=22}] ~ ~ ~ function act/4/load_2
execute @s[scores={var1=21}] ~ ~ ~ playsound conduit.attack @a ~ ~ ~ 1 0.7 1
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1