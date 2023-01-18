#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/8/scene"}]}

execute @s[scores={address=80000}] ~ ~ ~ function act/8/0_
execute @s[scores={address=80100}] ~ ~ ~ function act/8/1_
execute @s[scores={address=80101}] ~ ~ ~ function act/8/1_success
execute @s[scores={address=80102}] ~ ~ ~ function act/8/1_failure
execute @s[scores={address=80200}] ~ ~ ~ function act/8/2_
execute @s[scores={address=80300}] ~ ~ ~ function act/8/3_
execute @s[scores={address=80301}] ~ ~ ~ function act/8/3_success
execute @s[scores={address=80302}] ~ ~ ~ function act/8/3_failure
execute @s[scores={address=80400}] ~ ~ ~ function act/8/4_
execute @s[scores={address=80500}] ~ ~ ~ function act/8/5_
execute @s[scores={address=80501}] ~ ~ ~ function act/8/5_success
execute @s[scores={address=80502}] ~ ~ ~ function act/8/5_failure
execute @s[scores={address=80600}] ~ ~ ~ function act/8/6_
execute @s[scores={address=80700}] ~ ~ ~ function act/8/7_
execute @s[scores={address=80701}] ~ ~ ~ function act/8/7_success
execute @s[scores={address=80702}] ~ ~ ~ function act/8/7_failure
execute @s[scores={address=80800}] ~ ~ ~ function act/8/8_

# Teleport out of the pit
execute @s[x=-132,y=72,z=173,dx=20,dy=2,dz=16,scores={var8=0}] ~ ~ ~ scoreboard players set @s var8 40
execute @s[scores={var8=40}] ~ ~ ~ playsound bubble.downinside @a ~ ~ ~ 1 1 1
execute @s[scores={var8=40}] ~ ~ ~ effect @s blindness 10 1 true
execute @s[scores={var8=40}] ~ ~ ~ effect @s slowness 10 4 true
execute @s[scores={var8=20}] ~ ~ ~ tp @s -119 75 176 0 0
execute @s[scores={var8=20}] ~ ~ ~ effect @s clear
execute @s[scores={var8=18}] ~ ~ ~ playsound item.trident.riptide_2 @a ~ ~ ~ 1 0.5 1
execute @s[scores={var8=1..20}] ~ ~ ~ particle rwm:whirlwind ~ ~ ~
execute @s[scores={var8=1..}] ~ ~ ~ scoreboard players remove @s var8 1

# Wind particles
execute @s ~ ~ ~ detect -111 76 179 air 0 particle rwm:wind -111 76 179
execute @s ~ ~ ~ detect -111 77 181 air 0 particle rwm:wind -111 77 181
execute @s ~ ~ ~ detect -111 76 183 air 0 particle rwm:wind -111 76 183
execute @s ~ ~ ~ detect -111 76 179 air 0 particle rwm:wind -111 76 179
execute @s ~ ~ ~ detect -111 77 181 air 0 particle rwm:wind -111 77 181
execute @s ~ ~ ~ detect -111 76 183 air 0 particle rwm:wind -111 76 183
execute @s ~ ~ ~ detect -111 76 179 air 0 particle rwm:wind -111 76 179
execute @s ~ ~ ~ detect -111 77 181 air 0 particle rwm:wind -111 77 181
execute @s ~ ~ ~ detect -111 76 183 air 0 particle rwm:wind -111 76 183
execute @s[scores={second=0}] ~ ~ ~ detect -111 76 179 air 0 particle rwm:wind_streak -110 76 179
execute @s[scores={second=5}] ~ ~ ~ detect -111 77 181 air 0 particle rwm:wind_streak -110 77 181
execute @s[scores={second=13}] ~ ~ ~ detect -111 76 183 air 0 particle rwm:wind_streak -110 76 183