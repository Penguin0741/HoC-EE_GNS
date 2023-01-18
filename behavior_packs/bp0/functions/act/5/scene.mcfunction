#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/5/scene"}]}

execute @s[scores={address=50000}] ~ ~ ~ function act/5/0_
execute @s[scores={address=50100}] ~ ~ ~ function act/5/1_
execute @s[scores={address=50200}] ~ ~ ~ function act/5/2_
execute @s[scores={address=50201}] ~ ~ ~ function act/5/2_success
execute @s[scores={address=50202}] ~ ~ ~ function act/5/2_failure
execute @s[scores={address=50300}] ~ ~ ~ function act/5/3_
execute @s[scores={address=50301}] ~ ~ ~ function act/5/3_success
execute @s[scores={address=50302}] ~ ~ ~ function act/5/3_failure
execute @s[scores={address=50400}] ~ ~ ~ function act/5/4_
execute @s[scores={address=50500}] ~ ~ ~ function act/5/5_
execute @s[scores={address=50501}] ~ ~ ~ function act/5/5_success
execute @s[scores={address=50502}] ~ ~ ~ function act/5/5_failure
execute @s[scores={address=50600}] ~ ~ ~ function act/5/6_