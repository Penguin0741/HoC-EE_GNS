
execute @s 19 74 23.7 summon rwm:trophy ~ ~ ~ skin_4
execute @s 19 74 23.7 tag @e[type=rwm:trophy,c=1] add trophy_green

tag @s add trophy_green

playsound random.levelup @a ~ ~ ~ 1 0.5 1

titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.unlocked","with": ["\n"]}]}
titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.green","with": ["\n"]}]}