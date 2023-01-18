
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @a times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @a title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:queen] take_off
execute @s[scores={tick=100}] ~ ~ ~ tag @e[type=rwm:queen] remove interactable
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn

execute @s[scores={tick=40}] ~ ~ ~ titleraw @a times 20 60 20
execute @s[scores={tick=40}] ~ ~ ~ titleraw @a title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=40}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"title.interact_queen","with": ["\n"]}]}
execute @s[scores={tick=40}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1

execute @s[scores={tick=20..40}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ tp @s ~0.2 ~0.1 ~
execute @s[scores={tick=20..40}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ particle rwm:queen_fly ~ ~1 ~
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:queen] despawn
execute @s[scores={tick=20}] ~ ~ ~ tag @e[type=rwm:queen] add old
execute @s[scores={tick=20}] ~ ~ ~ summon rwm:queen 27 70 170
execute @s[scores={tick=20}] ~ ~ ~ dialogue change @e[type=rwm:queen,tag=!old] npc.queen.0
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:queen] rotation2
execute @s[scores={tick=20}] ~ ~ ~ setblock 27 71 170 light_block 15
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:rook] despawn

execute @s[scores={tick=20}] ~ ~ ~ structure load "room3:queen_birthday" 17 72 162
execute @s[scores={tick=20}] ~ ~ ~ setblock 17 72 161 red_candle_cake 1
execute @s[scores={tick=20}] ~ ~ ~ setblock 14 72 170 air
execute @s[scores={tick=20}] ~ ~ ~ setblock 13 72 170 air

execute @s[scores={tick=20}] ~ ~ ~ scoreboard players set @a address 30000