
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @a times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @a title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:king] take_off
execute @s[scores={tick=100}] ~ ~ ~ tag @e[type=rwm:king] remove interactable
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn

execute @s[scores={tick=40}] ~ ~ ~ titleraw @a times 20 60 20
execute @s[scores={tick=40}] ~ ~ ~ titleraw @a title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=40}] ~ ~ ~ titleraw @a subtitle {"rawtext":[{"translate":"title.interact_king","with": ["\n"]}]}
execute @s[scores={tick=40}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1

execute @s[scores={tick=20..40}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ tp @s ~-0.2 ~0.1 ~
execute @s[scores={tick=20..40}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ particle rwm:king_fly ~ ~1 ~
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:king] despawn
execute @s[scores={tick=20}] ~ ~ ~ tag @e[type=rwm:king] add old
execute @s[scores={tick=20}] ~ ~ ~ summon rwm:king 31 70 170
execute @s[scores={tick=20}] ~ ~ ~ dialogue change @e[type=rwm:king,tag=!old] npc.king.0
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:king] rotation2
execute @s[scores={tick=20}] ~ ~ ~ setblock 27 71 170 light_block 15
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:bishop] despawn

execute @s[scores={tick=20}] ~ ~ ~ structure load "room3:king_birthday" 39 72 167
execute @s[scores={tick=20}] ~ ~ ~ setblock 40 72 167 red_candle_cake 1
execute @s[scores={tick=20}] ~ ~ ~ scoreboard players set @a address 30000