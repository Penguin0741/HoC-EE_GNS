
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 0.6 1
execute @s[scores={tick=70}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=50}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=40}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={tick=20}] ~ ~ ~ playsound beacon.activate @a ~ ~ ~ 1 1.2 1

execute @s[scores={tick=100,var1=1}] ~ ~ ~ fill 204 42 -561 198 49 -567 barrier 0 replace structure_void
execute @s[scores={tick=100,var1=2}] ~ ~ ~ fill 198 42 -609 204 49 -615 barrier 0 replace structure_void
execute @s[scores={tick=100,var1=3}] ~ ~ ~ fill 246 42 -615 252 49 -609 barrier 0 replace structure_void
execute @s[scores={tick=100,var1=4}] ~ ~ ~ fill 252 42 -567 246 49 -561 barrier 0 replace structure_void
execute @s[scores={tick=90,var1=1}] ~ ~ ~ fill 204 42 -561 198 42 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=90,var1=2}] ~ ~ ~ fill 198 42 -609 204 42 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=90,var1=3}] ~ ~ ~ fill 246 42 -615 252 42 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=90,var1=4}] ~ ~ ~ fill 252 42 -567 246 42 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=80,var1=1}] ~ ~ ~ fill 204 43 -561 198 43 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=80,var1=2}] ~ ~ ~ fill 198 43 -609 204 43 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=80,var1=3}] ~ ~ ~ fill 246 43 -615 252 43 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=80,var1=4}] ~ ~ ~ fill 252 43 -567 246 43 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=70,var1=1}] ~ ~ ~ fill 204 44 -561 198 44 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=70,var1=2}] ~ ~ ~ fill 198 44 -609 204 44 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=70,var1=3}] ~ ~ ~ fill 246 44 -615 252 44 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=70,var1=4}] ~ ~ ~ fill 252 44 -567 246 44 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=60,var1=1}] ~ ~ ~ fill 204 45 -561 198 45 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=60,var1=2}] ~ ~ ~ fill 198 45 -609 204 45 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=60,var1=3}] ~ ~ ~ fill 246 45 -615 252 45 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=60,var1=4}] ~ ~ ~ fill 252 45 -567 246 45 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=50,var1=1}] ~ ~ ~ fill 204 46 -561 198 46 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=50,var1=2}] ~ ~ ~ fill 198 46 -609 204 46 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=50,var1=3}] ~ ~ ~ fill 246 46 -615 252 46 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=50,var1=4}] ~ ~ ~ fill 252 46 -567 246 46 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=40,var1=1}] ~ ~ ~ fill 204 47 -561 198 47 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=40,var1=2}] ~ ~ ~ fill 198 47 -609 204 47 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=40,var1=3}] ~ ~ ~ fill 246 47 -615 252 47 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=40,var1=4}] ~ ~ ~ fill 252 47 -567 246 47 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=30,var1=1}] ~ ~ ~ fill 204 48 -561 198 48 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=30,var1=2}] ~ ~ ~ fill 198 48 -609 204 48 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=30,var1=3}] ~ ~ ~ fill 246 48 -615 252 48 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=30,var1=4}] ~ ~ ~ fill 252 48 -567 246 48 -561 polished_deepslate 0 replace barrier
execute @s[scores={tick=20,var1=1}] ~ ~ ~ fill 204 49 -561 198 49 -567 polished_deepslate 0 replace barrier
execute @s[scores={tick=20,var1=2}] ~ ~ ~ fill 198 49 -609 204 49 -615 polished_deepslate 0 replace barrier
execute @s[scores={tick=20,var1=3}] ~ ~ ~ fill 246 49 -615 252 49 -609 polished_deepslate 0 replace barrier
execute @s[scores={tick=20,var1=4}] ~ ~ ~ fill 252 49 -567 246 49 -561 polished_deepslate 0 replace barrier

execute @s[scores={tick=20},tag=cannon_1,tag=cannon_2,tag=cannon_3,tag=cannon_4] ~ ~ ~ function act/11/6
execute @s[scores={tick=20,address=110500..110599}] ~ ~ ~ function act/11/3
