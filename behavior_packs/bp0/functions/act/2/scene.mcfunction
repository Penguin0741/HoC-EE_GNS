#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/2/scene"}]}

execute @s[scores={address=20000}] ~ ~ ~ function act/2/0_
execute @s[scores={address=20100}] ~ ~ ~ function act/2/1_
execute @s[scores={address=20101}] ~ ~ ~ function act/2/1_animate
execute @s[scores={address=20200}] ~ ~ ~ function act/2/2_
execute @s[scores={address=20201}] ~ ~ ~ function act/2/2_success
execute @s[scores={address=20202}] ~ ~ ~ function act/2/2_failure
execute @s[scores={address=20203}] ~ ~ ~ function act/2/2_start
execute @s[scores={address=20300}] ~ ~ ~ function act/2/3_
execute @s[scores={address=20400}] ~ ~ ~ function act/2/4_
execute @s[scores={address=20401}] ~ ~ ~ function act/2/4_success
execute @s[scores={address=20402}] ~ ~ ~ function act/2/4_failure
execute @s[scores={address=20500}] ~ ~ ~ function act/2/5_