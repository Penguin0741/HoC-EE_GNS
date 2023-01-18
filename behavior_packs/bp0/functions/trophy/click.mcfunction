
playsound random.orb @a ~ ~ ~ 1 0.5 1

titleraw @a times 0 60 20
titleraw @a title {"rawtext":[{"translate":"title.trophy.click","with": ["\n"]}]}
execute @s[tag=trophy_note] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.note","with": ["\n"]}]}
execute @s[tag=trophy_book] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.book","with": ["\n"]}]}
execute @s[tag=trophy_boss] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.boss","with": ["\n"]}]}
execute @s[tag=trophy_green] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.green","with": ["\n"]}]}
execute @s[tag=trophy_yellow] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.yellow","with": ["\n"]}]}
execute @s[tag=trophy_red] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.red","with": ["\n"]}]}
execute @s[tag=trophy_emerald] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.trophy.emerald","with": ["\n"]}]}