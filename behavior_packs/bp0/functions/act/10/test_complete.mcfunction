
execute @s[scores={address=100300}] ~ ~ ~ execute @c ~ ~ ~ setblock 25 71 32 trapdoor 15
execute @s[scores={address=100300}] ~ ~ ~ execute @c ~ ~ ~ tag @a add end_signal
execute @s[scores={address=100300},tag=!end_signal] ~ ~ ~ say Press C to code to summon the agent first!

execute @s[scores={address=100400}] ~ ~ ~ tp @c 25 72 32
execute @s[scores={address=100400}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=100600}] ~ ~ ~ setblock 26 79 31 trapdoor 14
execute @s[scores={address=100600}] ~ ~ ~ setblock 26 79 33 trapdoor 14
execute @s[scores={address=100600}] ~ ~ ~ setblock 24 79 33 trapdoor 14
execute @s[scores={address=100600}] ~ ~ ~ setblock 24 79 31 trapdoor 14
execute @s[scores={address=100600}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=100800}] ~ ~ ~ tp @c 39 72 32
execute @s[scores={address=100800}] ~ ~ ~ tag @s add end_signal