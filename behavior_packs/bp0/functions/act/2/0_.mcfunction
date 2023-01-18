
execute @s[tag=!touch,scores={var1=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.2.0"}]}
execute @s[tag=touch,scores={var1=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.2.0"}]}

# Load sequence
execute @s[scores={var1=100}] ~ ~ ~ function act/2/load_1
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
execute @s[scores={var1=2}] ~ ~ ~ detect 4 69 118 air 0 scoreboard players add @s var1 1
execute @s[scores={var1=2}] ~ ~ ~ function act/2/load_2
execute @s[scores={var1=1}] ~ ~ ~ playsound conduit.attack @a ~ ~ ~ 1 0.7 1
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1