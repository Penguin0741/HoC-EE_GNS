#> @a[tag=main_player]

tellraw @a[tag=debug_loop] {"rawtext":[{"text":"loop"}]}

# If an instruction packet has arrived, add the instruction to the queue
tag @s remove no_instruction
execute @s ~ ~ ~ detect 0 64 0 air 0 tag @s add no_instruction
execute @s[tag=!no_instruction] ~ ~ ~ function api/queue_instruction

# Advance the queue every queue_delay ticks
execute @s[scores={queue_tick=1..}] ~ ~ ~ scoreboard players remove @s queue_tick 1
execute @s[scores={code_state=2..3,queue_tick=0}] ~ ~ ~ clone 0 1 0 0 50 0 0 0 0 replace move
execute @s[scores={code_state=2..3,queue_tick=0,queue_slot=1..}] ~ ~ ~ scoreboard players remove @s queue_slot 1
execute @s[scores={queue_tick=0}] ~ ~ ~ scoreboard players operation @s queue_tick = @s queue_delay

# Determine whether or nor code is running this tick
tag @s remove code_running
execute @s[scores={language=1},codebuilder={code_status="in_progress"}] ~ ~ ~ tag @s add code_running
execute @s[scores={language=2,code_status=1}] ~ ~ ~ tag @s add code_running

# Use a scoreboard to keep track of more specific code states
# Code statuses:
# 0 = code not running
# 1 = code starting
# 2 = code running
# 3 = code finished, but instructions still processing
# 4 = code finished and instructions processed
# 5 = code was just forcibly stopped
execute @s[scores={code_state=4}] ~ ~ ~ scoreboard players set @s code_state 0
execute @s[tag=!code_running,scores={code_state=3,queue_slot=0,queue_tick=1}] ~ ~ ~ scoreboard players set @s code_state 4
execute @s[tag=code_running,scores={code_state=3}] ~ ~ ~ function api/clear_queue
execute @s[tag=!code_running,scores={code_state=2}] ~ ~ ~ scoreboard players set @s code_state 3
execute @s[tag=code_running,scores={code_state=1}] ~ ~ ~ scoreboard players set @s code_state 2
execute @s[tag=code_running,scores={code_state=0}] ~ ~ ~ scoreboard players set @s code_state 1
execute @s[scores={code_state=5}] ~ ~ ~ scoreboard players set @s code_state 0

# Send start and end signals if code has just started or ended
execute @s[scores={code_state=1}] ~ ~ ~ tag @s add start_signal
execute @s[scores={code_state=1}] ~ ~ ~ tag @s add debug_run
execute @s[scores={code_state=4}] ~ ~ ~ tag @s add end_signal

# Room-specific loops
execute @s[scores={address=-09999..09999}] ~ ~ ~ function act/0/scene
execute @s[scores={address=10000..19999}] ~ ~ ~ function act/1/scene
execute @s[scores={address=20000..29999}] ~ ~ ~ function act/2/scene
execute @s[scores={address=30000..39999}] ~ ~ ~ function act/3/scene
execute @s[scores={address=40000..49999}] ~ ~ ~ function act/4/scene
execute @s[scores={address=50000..59999}] ~ ~ ~ function act/5/scene
execute @s[scores={address=60000..69999}] ~ ~ ~ function act/6/scene
execute @s[scores={address=70000..79999}] ~ ~ ~ function act/7/scene
execute @s[scores={address=80000..89999}] ~ ~ ~ function act/8/scene
execute @s[scores={address=90000..99999}] ~ ~ ~ function act/9/scene
execute @s[scores={address=100000..109999}] ~ ~ ~ function act/10/scene
execute @s[scores={address=110000..119999}] ~ ~ ~ function act/11/scene

# Reset start and end signals
tag @s remove start_signal
tag @s remove end_signal

# Clear any instruction that was just run
tag @s remove no_instruction
execute @s ~ ~ ~ detect 0 0 0 air 0 tag @s add no_instruction
execute @s[tag=!no_instruction] ~ ~ ~ setblock 0 0 0 air

# Tick scoreboard values
scoreboard players remove @s[scores={tick=1..}] tick 1
scoreboard players remove @s[scores={hint=1..}] hint 1

scoreboard players add @s second 1
scoreboard players set @s[scores={second=20}] second 0

# Give player saturation
effect @s saturation 10 0 true

# Kill the player's agent if they're not supposed to have an agent
execute @s[scores={agent=0}] ~ ~ ~ tp @c 0 0 0
execute @s[scores={agent=0}] ~ ~ ~ kill @c

# Make interactable objects sparkle
execute @e[tag=interactable] ~ ~ ~ particle rwm:sparkle ~ ~ ~
execute @e[tag=interactable] ~ ~ ~ particle rwm:sparkle ~ ~1 ~
execute @s[scores={second=0}] ~ ~ ~ execute @e[tag=interactable] ~ ~ ~ particle rwm:interact ~0.7 ~1.5 ~

# Keep notebook npc under main player at all times
execute @s[scores={address=0..109999},tag=!in_notebook] ~ ~ ~ tp @e[type=rwm:notebook] ~ 60 ~
execute @s[scores={address=0..109999},tag=in_notebook] ~ ~ ~ tp @e[type=rwm:notebook] ^ ^ ^-2