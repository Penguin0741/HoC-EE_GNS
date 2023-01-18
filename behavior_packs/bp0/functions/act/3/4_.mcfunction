
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.3.4"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.3.4"}]}

execute @s[scores={second=0}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ particle rwm:interact ~-0.7 ~1.5 ~
execute @e[type=rwm:king] ~ ~ ~ particle rwm:sparkle ~ ~ ~
execute @e[type=rwm:king] ~ ~ ~ particle rwm:sparkle ~ ~1 ~