
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 210

execute @s[scores={tick=210}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=210}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=210}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=210}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=210}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn
execute @s[scores={tick=160}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=160}] ~ ~ ~ structure load "room5:channelwater3" -55 70 47
execute @s[scores={tick=150}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=150}] ~ ~ ~ structure load "room5:channelwater4" -55 70 47
execute @s[scores={tick=140}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=140}] ~ ~ ~ structure load "room5:channelwater5" -55 70 47
execute @s[scores={tick=130}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=130}] ~ ~ ~ structure load "room5:channelwater6" -55 70 47
execute @s[scores={tick=120}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=120}] ~ ~ ~ structure load "room5:channelwater7" -55 70 47
execute @s[scores={tick=110}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=110}] ~ ~ ~ structure load "room5:mushroomwater1" -62 70 61
execute @s[scores={tick=100}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ structure load "room5:mushroomwater2" -62 70 61
execute @s[scores={tick=90}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=90}] ~ ~ ~ structure load "room5:mushroomwater3" -62 70 61
execute @s[scores={tick=80}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ structure load "room5:mushroomwater4" -62 70 61
execute @s[scores={tick=70}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=70}] ~ ~ ~ structure load "room5:mushroomwater5" -62 70 61
execute @s[scores={tick=60}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ structure load "room5:mushroomwater6" -62 70 61
execute @s[scores={tick=50}] ~ ~ ~ playsound block.chorusflower.grow @a ~ ~ ~ 1 1 1
execute @s[scores={tick=50}] ~ ~ ~ structure load "room5:mushrooms1" -60 73 63
execute @s[scores={tick=40}] ~ ~ ~ structure load "room5:mushrooms2" -60 73 63
execute @s[scores={tick=30}] ~ ~ ~ structure load "room5:mushrooms3" -60 73 63
execute @s[scores={tick=20}] ~ ~ ~ structure load "room5:mushrooms4" -60 73 63
execute @s[scores={tick=10}] ~ ~ ~ structure load "room5:mushrooms5" -60 73 63
execute @s[scores={tick=10}] ~ ~ ~ function act/5/4
