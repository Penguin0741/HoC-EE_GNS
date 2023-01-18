# Runs once every tick.
# @s: The game entity.

# Run player login function whenever a player logs in to the world
scoreboard players operation @a login_comp = @s login_tick
execute @a ~ ~ ~ scoreboard players operation @s login_comp -= @s login_tick
execute @a[scores={login_comp=1..}] ~ ~ ~ function login_handler/login

scoreboard players add @s login_tick 1
scoreboard players operation @a login_tick = @s login_tick