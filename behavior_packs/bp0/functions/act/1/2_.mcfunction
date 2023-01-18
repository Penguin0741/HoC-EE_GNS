
# Puzzle 2: Mirror Lights
# var1 - The number of lamps that match the other side of the mirror

execute @s[tag=!touch,scores={hint=1..}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.1.2.1"}]}
execute @s[tag=touch,scores={hint=1..}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.1.2.1"}]}
execute @s[tag=!touch,scores={hint=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.1.2.2"}]}
execute @s[tag=touch,scores={hint=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.1.2.2"}]}

scoreboard players set @s var1 0
execute @s ~ ~ ~ detect 41 74 86 lit_redstone_lamp 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 37 73 80 redstone_lamp 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 29 74 80 lit_redstone_lamp 0 scoreboard players add @s var1 1
execute @s[scores={var1=3}] ~ ~ ~ scoreboard players add @s address 1

particle rwm:sparkle 23 74 81
particle rwm:sparkle 15 73 81
particle rwm:sparkle 11 74 85

execute @s[scores={second=0,hint=0}] ~ ~ ~ detect 29 74 80 redstone_lamp 0 particle rwm:interact 29 74 81
execute @s[scores={second=0,hint=0}] ~ ~ ~ detect 37 73 80 lit_redstone_lamp 0 particle rwm:interact 37 73 81
execute @s[scores={second=0,hint=0}] ~ ~ ~ detect 41 74 86 redstone_lamp 0 particle rwm:interact 41 74 85