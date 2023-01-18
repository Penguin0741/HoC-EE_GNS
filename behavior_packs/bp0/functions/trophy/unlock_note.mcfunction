
execute @s 19 73 24 summon rwm:trophy ~ ~ ~ skin_1
execute @s 19 73 24 tag @e[type=rwm:trophy,c=1] add trophy_note

tag @s add trophy_note

playsound random.levelup @a ~ ~ ~ 1 0.5 1

titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.unlocked","with": ["\n"]}]}
titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.note","with": ["\n"]}]}