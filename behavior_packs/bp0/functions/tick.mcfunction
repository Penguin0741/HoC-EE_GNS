# @server

# Player login
execute @e[tag=game] ~ ~ ~ function login_handler/loop

# Main player init
execute @a[tag=main_player] ~ ~ ~ tag @a[tag=!main_player] add extra_player
tag @p[tag=!extra_player] add main_player

# Extra players get title
execute @a[tag=extra_player] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.singleplayer_only"}]}

# Main game loop
execute @a[tag=main_player] ~ ~ ~ function loop
