
execute @s 19 74 23 summon rwm:trophy ~ ~ ~ skin_5
execute @s 19 74 23 tag @e[type=rwm:trophy,c=1] add trophy_yellow

tag @s add trophy_yellow

playsound random.levelup @a ~ ~ ~ 1 0.5 1

titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.unlocked","with": ["\n"]}]}
titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.yellow","with": ["\n"]}]}