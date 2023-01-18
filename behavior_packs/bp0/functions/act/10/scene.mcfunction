#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/10/scene"}]}

execute @s[scores={address=100000}] ~ ~ ~ function act/10/0_
execute @s[scores={address=100100}] ~ ~ ~ function act/10/1_
execute @s[scores={address=100200}] ~ ~ ~ function act/10/2_
execute @s[scores={address=100300}] ~ ~ ~ function act/10/3_
execute @s[scores={address=100301}] ~ ~ ~ function act/10/3_success
execute @s[scores={address=100302}] ~ ~ ~ function act/10/3_failure
execute @s[scores={address=100400}] ~ ~ ~ function act/10/4_
execute @s[scores={address=100401}] ~ ~ ~ function act/10/4_success
execute @s[scores={address=100402}] ~ ~ ~ function act/10/4_failure
execute @s[scores={address=100500}] ~ ~ ~ function act/10/5_
execute @s[scores={address=100600}] ~ ~ ~ function act/10/6_
execute @s[scores={address=100601}] ~ ~ ~ function act/10/6_success
execute @s[scores={address=100602}] ~ ~ ~ function act/10/6_failure
execute @s[scores={address=100700}] ~ ~ ~ function act/10/7_
execute @s[scores={address=100800}] ~ ~ ~ function act/10/8_
execute @s[scores={address=100801}] ~ ~ ~ function act/10/8_success
execute @s[scores={address=100802}] ~ ~ ~ function act/10/8_failure
execute @s[scores={address=100900}] ~ ~ ~ function act/10/9_

# Doors
execute @a[x=3,y=72,z=31,dx=4,dy=4,dz=2] ~ ~ ~ fill 9 72 33 9 75 31 barrier
execute @a[x=3,y=72,z=31,dx=4,dy=4,dz=2] ~ ~ ~ function act/1/0

execute @a[x=24,y=72,z=50,dx=2,dy=4,dz=4] ~ ~ ~ fill 26 72 48 24 75 48 barrier
execute @a[x=24,y=72,z=50,dx=2,dy=4,dz=4] ~ ~ ~ function act/4/0

execute @a[x=43,y=72,z=31,dx=4,dy=4,dz=2] ~ ~ ~ fill 41 72 31 41 75 33 barrier
execute @a[x=43,y=72,z=31,dx=4,dy=4,dz=2] ~ ~ ~ function act/7/0

# Highlight the different passages
particle rwm:hallway_green 5 73 32
particle rwm:hallway_yellow 25 73 52
particle rwm:hallway_red 45 73 32

# Teleport out of the pit
execute @s[x=24,y=69,z=31,dx=2,dy=1,dz=2,scores={var8=0}] ~ ~ ~ scoreboard players set @s var8 40
execute @s[scores={var8=40}] ~ ~ ~ playsound bubble.downinside @a ~ ~ ~ 1 1 1
execute @s[scores={var8=40}] ~ ~ ~ effect @s blindness 10 1 true
execute @s[scores={var8=40}] ~ ~ ~ effect @s slowness 10 4 true
execute @s[scores={var8=20}] ~ ~ ~ tp @s 25 72 25 0 0
execute @s[scores={var8=20}] ~ ~ ~ effect @s clear
execute @s[scores={var8=18}] ~ ~ ~ playsound item.trident.riptide_2 @a ~ ~ ~ 1 0.5 1
execute @s[scores={var8=1..20}] ~ ~ ~ particle rwm:whirlwind ~ ~ ~
execute @s[scores={var8=1..}] ~ ~ ~ scoreboard players remove @s var8 1


particle rwm:moonlight 25 85 32
execute @s ~ ~ ~ detect 26 79 31 trapdoor 3 particle rwm:moon_beam_short 26 80 31
execute @s ~ ~ ~ detect 24 79 31 trapdoor 3 particle rwm:moon_beam_short 24 80 31
execute @s ~ ~ ~ detect 24 79 33 trapdoor 3 particle rwm:moon_beam_short 24 80 33
execute @s ~ ~ ~ detect 26 79 33 trapdoor 3 particle rwm:moon_beam_short 26 80 33
execute @s ~ ~ ~ detect 26 79 31 trapdoor 14 particle rwm:moon_beam_long 26 80 31
execute @s ~ ~ ~ detect 24 79 31 trapdoor 14 particle rwm:moon_beam_long 24 80 31
execute @s ~ ~ ~ detect 24 79 33 trapdoor 14 particle rwm:moon_beam_long 24 80 33
execute @s ~ ~ ~ detect 26 79 33 trapdoor 14 particle rwm:moon_beam_long 26 80 33