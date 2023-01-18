
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

particle rwm:sparkle 11 74 83
particle rwm:sparkle 11 74 82
particle rwm:sparkle 11 74 81
particle rwm:sparkle 11 74 80
particle rwm:sparkle 11 74 79

execute @s[rym=-120,ry=-60,rxm=-55,rx=55] ~ ~ ~ function act/1/4