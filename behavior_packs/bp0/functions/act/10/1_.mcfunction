
execute @s[tag=!select_notebook,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.1.1"}]}
execute @s[tag=!select_notebook,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.1.1"}]}

execute @s[tag=select_notebook,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.1.2"}]}
execute @s[tag=select_notebook,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.1.2"}]}