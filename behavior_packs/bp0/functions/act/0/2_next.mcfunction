## Player has finished looking at a particle, it is time to move to the next

# Set player objective score
scoreboard players set @s address 00100

# Pop the particle
execute @s[scores={lookcount=0}] ~ ~ ~ particle rwm:target_dissipate -12 70 -258
execute @s[scores={lookcount=1}] ~ ~ ~ particle rwm:target_dissipate -15 69.5 -259
execute @s[scores={lookcount=2}] ~ ~ ~ particle rwm:target_dissipate -16 68.5 -262
execute @s[scores={lookcount=3}] ~ ~ ~ particle rwm:target_dissipate -14 68.5 -265
execute @s[scores={lookcount=4}] ~ ~ ~ particle rwm:target_dissipate -10 68.5 -265
execute @s[scores={lookcount=5}] ~ ~ ~ particle rwm:target_dissipate -8 68.5 -262
execute @s[scores={lookcount=6}] ~ ~ ~ particle rwm:target_dissipate -9 69.5 -259
execute @s[scores={lookcount=7}] ~ ~ ~ particle rwm:target_dissipate -12 71.5 -258
execute @s[scores={lookcount=8}] ~ ~ ~ particle rwm:target_dissipate -12 68.5 -258

# Reset timer
scoreboard players set @s timer 0

# Update lookcount score
scoreboard players add @s lookcount 1

# Play sound
execute @s[scores={lookcount=..8}] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound mob.endermen.portal @s ~ ~ ~ 0.75 2

# If the area is passed, move on
execute @s[scores={lookcount=9..}] ~ ~ ~ function act/0/3