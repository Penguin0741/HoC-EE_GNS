
execute @s 19 73 22 summon rwm:trophy ~ ~ ~ skin_3
execute @s 19 73 22 tag @e[type=rwm:trophy,c=1] add trophy_boss

tag @s add trophy_boss

playsound random.levelup @a ~ ~ ~ 1 0.5 1

titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.unlocked","with": ["\n"]}]}
titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.boss","with": ["\n"]}]}