
tag @s remove in_area
tag @s[x=14,y=72,z=170,r=5,tag=!queen] add in_area
tag @s[x=40,y=72,z=167,r=5,tag=!king] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

execute @s[tag=!queen] ~ ~ ~ particle rwm:sparkle 14 72 170
execute @s[tag=!queen,scores={second=0},tag=in_area] ~ ~ ~ particle rwm:interact 15 72 170
execute @s[tag=!queen] ~ ~ ~ detect 14 72 170 polished_blackstone_button 9 function act/3/1
execute @s[tag=!king] ~ ~ ~ particle rwm:sparkle 40 72 167
execute @s[tag=!king,scores={second=0},tag=in_area] ~ ~ ~ particle rwm:interact 40 72 168
execute @s[tag=!king] ~ ~ ~ detect 40 72 167 polished_blackstone_button 9 function act/3/3

execute @s[tag=king,tag=queen,scores={var1=0}] ~ ~ ~ function act/3/5

# Load sequence
execute @s[scores={var1=100}] ~ ~ ~ function act/3/load_1
execute @s[scores={var1=100}] ~ ~ ~ effect @s blindness 99999 1 true
execute @s[scores={var1=100}] ~ ~ ~ effect @s slowness 99999 1 true
execute @s[scores={var1=100}] ~ ~ ~ playsound portal.trigger @a ~ ~ ~ 1 1 1
execute @s[scores={var1=1..100,path=1}] ~ ~ ~ particle rwm:teleporter_green ~ ~ ~
execute @s[scores={var1=1..100,path=2}] ~ ~ ~ particle rwm:teleporter_yellow ~ ~ ~
execute @s[scores={var1=1..100,path=3}] ~ ~ ~ particle rwm:teleporter_red ~ ~ ~
execute @s[scores={var1=100}] ~ ~ ~ titleraw @s times 0 100 0
execute @s[scores={var1=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={var1=100}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.1"}]}
execute @s[scores={var1=80}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.2"}]}
execute @s[scores={var1=60}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.3"}]}
execute @s[scores={var1=40}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.4"}]}
execute @s[scores={var1=20}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.loading.5"}]}
execute @s[scores={var1=2}] ~ ~ ~ detect 8 69 149 air 0 scoreboard players add @s var1 1
execute @s[scores={var1=2}] ~ ~ ~ function act/3/load_2
execute @s[scores={var1=1}] ~ ~ ~ playsound conduit.attack @a ~ ~ ~ 1 0.7 1
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1