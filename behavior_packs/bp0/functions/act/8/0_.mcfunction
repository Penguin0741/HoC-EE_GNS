
tag @s remove in_area
tag @s[x=-116,y=73,z=168,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

particle rwm:sparkle -116 73 168
execute @s[scores={var1=0,second=0},tag=in_area] ~ ~ ~ particle rwm:interact -116 73 167

execute @s ~ ~ ~ detect -116 73 168 warped_button 9 function act/8/1

# Load sequence
execute @s[scores={var1=100}] ~ ~ ~ function act/8/load_1
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
execute @s[scores={var1=2}] ~ ~ ~ detect -135 66 154 air 0 scoreboard players add @s var1 1
execute @s[scores={var1=2}] ~ ~ ~ function act/8/load_2
execute @s[scores={var1=1}] ~ ~ ~ playsound conduit.attack @a ~ ~ ~ 1 0.7 1
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1