
# Puzzle 2: Move Agent Up

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code stops running
execute @s[tag=end_signal] ~ ~ ~ execute @c[x=25,y=72,z=32,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players add @a address 1
execute @s[tag=end_signal,scores={address=100400}] ~ ~ ~ scoreboard players add @s address 2

execute @s[tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:fake_agent] @s npc.agent.2.1