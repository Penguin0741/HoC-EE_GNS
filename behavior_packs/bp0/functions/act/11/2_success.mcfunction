
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn
# Open all doors
execute @s[scores={tick=80}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1 1
execute @s[scores={tick=70}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=50}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.3 1
execute @s[scores={tick=40}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.4 1
execute @s[scores={tick=30}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=20}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.6 1
execute @s[scores={tick=10}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 1.7 1
execute @s[scores={tick=80}] ~ ~ ~ fill 204 49 -561 198 49 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=80}] ~ ~ ~ fill 198 49 -609 204 49 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=80}] ~ ~ ~ fill 246 49 -615 252 49 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=80}] ~ ~ ~ fill 252 49 -567 246 49 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=70}] ~ ~ ~ fill 204 48 -561 198 48 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=70}] ~ ~ ~ fill 198 48 -609 204 48 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=70}] ~ ~ ~ fill 246 48 -615 252 48 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=70}] ~ ~ ~ fill 252 48 -567 246 48 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=60}] ~ ~ ~ fill 204 47 -561 198 47 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=60}] ~ ~ ~ fill 198 47 -609 204 47 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=60}] ~ ~ ~ fill 246 47 -615 252 47 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=60}] ~ ~ ~ fill 252 47 -567 246 47 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=50}] ~ ~ ~ fill 204 46 -561 198 46 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=50}] ~ ~ ~ fill 198 46 -609 204 46 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=50}] ~ ~ ~ fill 246 46 -615 252 46 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=50}] ~ ~ ~ fill 252 46 -567 246 46 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=40}] ~ ~ ~ fill 204 45 -561 198 45 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=40}] ~ ~ ~ fill 198 45 -609 204 45 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=40}] ~ ~ ~ fill 246 45 -615 252 45 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=40}] ~ ~ ~ fill 252 45 -567 246 45 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=30}] ~ ~ ~ fill 204 44 -561 198 44 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=30}] ~ ~ ~ fill 198 44 -609 204 44 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=30}] ~ ~ ~ fill 246 44 -615 252 44 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=30}] ~ ~ ~ fill 252 44 -567 246 44 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=20}] ~ ~ ~ fill 204 43 -561 198 43 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=20}] ~ ~ ~ fill 198 43 -609 204 43 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=20}] ~ ~ ~ fill 246 43 -615 252 43 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=20}] ~ ~ ~ fill 252 43 -567 246 43 -561 structure_void 0 replace polished_deepslate
execute @s[scores={tick=10}] ~ ~ ~ fill 204 42 -561 198 42 -567 structure_void 0 replace polished_deepslate
execute @s[scores={tick=10}] ~ ~ ~ fill 198 42 -609 204 42 -615 structure_void 0 replace polished_deepslate
execute @s[scores={tick=10}] ~ ~ ~ fill 246 42 -615 252 42 -609 structure_void 0 replace polished_deepslate
execute @s[scores={tick=10}] ~ ~ ~ fill 252 42 -567 246 42 -561 structure_void 0 replace polished_deepslate

execute @s[scores={tick=10}] ~ ~ ~ tag @a remove dlgopened
execute @s[scores={tick=10}] ~ ~ ~ function act/11/3