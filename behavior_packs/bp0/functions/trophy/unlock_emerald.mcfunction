
execute @s 20 72 19 summon rwm:trophy ~ ~ ~ skin_7
execute @s 20 72 19 tag @e[type=rwm:trophy,c=1] add trophy_emerald

tag @s add trophy_emerald

playsound random.levelup @a ~ ~ ~ 1 0.5 1

titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.unlocked","with": ["\n"]}]}
titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.emerald","with": ["\n"]}]}