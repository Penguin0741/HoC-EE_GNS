#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/7/scene"}]}

execute @s[scores={address=70000}] ~ ~ ~ function act/7/0_
execute @s[scores={address=70100}] ~ ~ ~ function act/7/1_
execute @s[scores={address=70101}] ~ ~ ~ function act/7/1_success
execute @s[scores={address=70102}] ~ ~ ~ function act/7/1_failure
execute @s[scores={address=70103}] ~ ~ ~ function act/7/1_start
execute @s[scores={address=70200}] ~ ~ ~ function act/7/2_
execute @s[scores={address=70300}] ~ ~ ~ function act/7/3_
execute @s[scores={address=70301}] ~ ~ ~ function act/7/3_success
execute @s[scores={address=70302}] ~ ~ ~ function act/7/3_failure
execute @s[scores={address=70400}] ~ ~ ~ function act/7/4_
execute @s[scores={address=70500}] ~ ~ ~ function act/7/5_
execute @s[scores={address=70501}] ~ ~ ~ function act/7/5_success
execute @s[scores={address=70502}] ~ ~ ~ function act/7/5_failure
execute @s[scores={address=70503}] ~ ~ ~ function act/7/5_start
execute @s[scores={address=70600}] ~ ~ ~ function act/7/6_

# Teleport out of the water
execute @s[x=-138,y=74,z=51,dx=42,dy=5,dz=33,scores={var8=0}] ~ ~ ~ scoreboard players set @s var8 40
execute @s[scores={var8=40}] ~ ~ ~ playsound bubble.downinside @a ~ ~ ~ 1 1 1
execute @s[scores={var8=40}] ~ ~ ~ effect @s blindness 10 1 true
execute @s[scores={var8=40}] ~ ~ ~ effect @s slowness 10 4 true
execute @s[scores={var8=20}] ~ ~ ~ tp @s -101 81 66 90 0
execute @s[scores={var8=20}] ~ ~ ~ effect @s clear
execute @s[scores={var8=18}] ~ ~ ~ playsound item.trident.riptide_2 @a ~ ~ ~ 1 0.5 1
execute @s[scores={var8=1..20}] ~ ~ ~ particle rwm:whirlwind ~ ~ ~
execute @s[scores={var8=1..}] ~ ~ ~ scoreboard players remove @s var8 1