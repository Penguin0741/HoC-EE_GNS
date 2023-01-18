function player
# function dev

function clear_entities
event entity @e[type=rwm:trophy] despawn
event entity @e[type=rwm:notebook] despawn

gamerule randomtickspeed 0
time set midnight
gamerule dodaylightcycle false
gamerule doweathercycle false
gamerule mobgriefing false
gamerule dotiledrops false
gamerule doentitydrops false

titleraw @s times 0 50 50
titleraw @s title {"rawtext":[{"translate":"blank"}]}
titleraw @s subtitle {"rawtext":[{"translate":"blank"}]}
titleraw @s actionbar {"rawtext":[{"translate":"blank"}]}

scoreboard objectives add address dummy
scoreboard objectives add var1 dummy
scoreboard objectives add var2 dummy
scoreboard objectives add var3 dummy
scoreboard objectives add var4 dummy
scoreboard objectives add var5 dummy
scoreboard objectives add var6 dummy
scoreboard objectives add var7 dummy
scoreboard objectives add var8 dummy
scoreboard objectives add tick dummy
scoreboard objectives add second dummy
scoreboard objectives add lookcount dummy
scoreboard objectives add movecount dummy
scoreboard objectives add timer dummy
scoreboard objectives add agent dummy
scoreboard objectives add language dummy
scoreboard objectives add hint dummy
scoreboard objectives add path dummy
scoreboard objectives add room_variant dummy
scoreboard objectives add notebook_page dummy
scoreboard objectives add boss_activity dummy
scoreboard objectives add queue_slot dummy
scoreboard objectives add queue_tick dummy
scoreboard objectives add queue_delay dummy
scoreboard objectives add code_state dummy
scoreboard objectives add cam.next dummy
scoreboard objectives add cam.tick dummy

scoreboard players set @s address 0
scoreboard players set @s var1 0
scoreboard players set @s var2 0
scoreboard players set @s var3 0
scoreboard players set @s var4 0
scoreboard players set @s var5 0
scoreboard players set @s var6 0
scoreboard players set @s var7 0
scoreboard players set @s var8 0
scoreboard players set @s tick 0
scoreboard players set @s second 0
scoreboard players set @s lookcount 0
scoreboard players set @s movecount 0
scoreboard players set @s timer 0
scoreboard players set @s agent 0
scoreboard players set @s language 0
scoreboard players set @s hint 0
scoreboard players set @s path 1
scoreboard players set @s room_variant 0
scoreboard players set @s notebook_page 0
scoreboard players set @s boss_activity 0
scoreboard players set @s queue_slot 0
scoreboard players set @s queue_tick 0
scoreboard players set @s queue_delay 10
scoreboard players set @s code_state 0
scoreboard players set @s cam.next 0
scoreboard players set @s cam.tick 0

function login_handler/init

# Game entity
kill @e[type=rwm:utility]
summon rwm:utility 0 64 0
tag @e[type=rwm:utility] add game

#> Player
execute @s ~ ~ ~ kill @c
clear @s
teleport @s -12 55 -326 0 0
spawnpoint @s ~ ~ ~
setworldspawn -12 55 -326
tag @s remove init
tag @s remove started
tag @s remove main_player
tag @s remove note_1
tag @s remove note_2
tag @s remove note_3
tag @s remove note_4
tag @s remove note_5
tag @s remove note_6
tag @s remove note_7
tag @s remove note_8
tag @s remove note_9
tag @s remove note_10
tag @s remove king
tag @s remove queen
tag @s remove trophy_first
tag @s remove trophy_notes
tag @s remove trophy_boss
tag @s remove trophy_green
tag @s remove trophy_yellow
tag @s remove trophy_red
tag @s remove trophy_all
tag @s remove cannon_1
tag @s remove cannon_2
tag @s remove cannon_3
tag @s remove cannon_4
tag @s remove replay

summon rwm:notebook 0 60 0
tag @e[type=rwm:notebook] add main_notebook

tag @s add main_player
tag @s add init

structure load "tut:intro_board" -13 67 -257
fill -11 67 -263 -13 69 -261 barrier
fill -12 67 -262 -12 68 -262 air
setblock -12 68 -263 air
fill -11 56 -323 -13 57 -323 quartz_block 3

function clear_entities
summon rwm:start -12 56 -324
setblock -12 40 -326 bedrock
setblock -12 41 -326 light_block 15
execute @s -12 41 -326 summon npc ~ ~ ~ npc
execute @s -12 41 -326 event entity @e[type=npc,c=1,tag=!old] variant19
execute @s -12 41 -326 dialogue change @e[type=npc,c=1,tag=!old] npc.tut0.1
execute @s -12 41 -326 tag @e[type=npc,c=1,tag=!old] add tut0

tag @a add started

event entity @e[type=rwm:start] interactable
event entity @e[type=npc] despawn

event entity @e[type=rwm:start] despawn
fill -11 56 -323 -13 57 -323 barrier

structure load intro:gate7 -18 68 -288
execute @s 0 70 0 summon npc ~ ~ ~ npc
execute @s 0 70 0 event entity @e[type=npc,c=1,tag=!old] variant19
execute @s 0 70 0 dialogue change @e[type=npc,c=1,tag=!old] npc.tutskip.1
execute @s 0 70 0 tag @e[type=npc,c=1,tag=!old] add tutskip
execute @s 0 70 0 summon rwm:host ~ ~ ~ npc
execute @s[tag=!touch] 0 70 0 dialogue change @e[type=rwm:host,c=1,tag=!old] npc.tut1.keyboard.1

fill -13 69 -263 -11 67 -261 air
fill -11 67 -257 -13 68 -257 air
tp @e[tag=tutskip] -12 67 -265

scoreboard players set @a address 00400
scoreboard players set @a var1 0
scoreboard players set @a var2 0
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

event entity @e[type=rwm:cam] despawn
event entity @e[type=rwm:actor] despawn

summon rwm:cam -12 70 -213 dolly
summon rwm:cam -12 72 -160 subject
summon rwm:cam -12 75 -190 dolly_mark

tp @s -12 67 -215

structure load "intro:house1" -29 67 -168