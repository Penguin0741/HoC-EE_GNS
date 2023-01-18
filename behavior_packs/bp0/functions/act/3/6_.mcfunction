
# Puzzle 3: Chess Puzzle
# var1 - The column the king is in
# var2 - The row the king is in
# var3 - The column the queen is in
# var4 - The row the queen is in
# var5 - A signal to update the position signs
# var6 - Timer to slide chess pieces

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 5
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 5
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 1
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 5
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var5 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var6 0
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:king] 31 70 170
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:queen] 27 70 170

# Move king forward
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players set @a var5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players remove @a var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players set @a[tag=main_player] var6 110

# Move king back
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players set @a var5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players add @a var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:king] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players set @a[tag=main_player] var6 210

# Move king left
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:king] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players set @a var5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:king] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players remove @a var1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:king] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players set @a[tag=main_player] var6 310

# Move king right
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:king] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players set @a var5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:king] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players add @a var1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:king] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players set @a[tag=main_player] var6 410

# Move queen forward
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players set @a var5 2
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players remove @a var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~-1 structure_void 0 scoreboard players set @a[tag=main_player] var6 510

# Move queen back
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players set @a var5 2
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players add @a var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:queen] ~ ~ ~ detect ~ ~ ~1 structure_void 0 scoreboard players set @a[tag=main_player] var6 610

# Move queen left
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:queen] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players set @a var5 2
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:queen] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players remove @a var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:queen] ~ ~ ~ detect ~-1 ~ ~ structure_void 0 scoreboard players set @a[tag=main_player] var6 710

# Move queen right
execute @s ~ ~ ~ detect 0 0 0 concrete 8 execute @e[type=rwm:queen] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players set @a var5 2
execute @s ~ ~ ~ detect 0 0 0 concrete 8 execute @e[type=rwm:queen] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players add @a var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 8 execute @e[type=rwm:queen] ~ ~ ~ detect ~1 ~ ~ structure_void 0 scoreboard players set @a[tag=main_player] var6 810

# Slide chess pieces
execute @s[scores={var5=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.scrambled
execute @s[scores={var5=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.scrambled
execute @s[scores={var5=1..}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
scoreboard players set @s var5 0

execute @s[scores={var6=100..499}] ~ ~ ~ tag @e[type=rwm:king] remove correct
execute @s[scores={var6=500..899}] ~ ~ ~ tag @e[type=rwm:queen] remove correct
execute @s[scores={var6=106..110}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ tp @s ~ ~ ~-0.2
execute @s[scores={var6=100}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=206..210}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ tp @s ~ ~ ~0.2
execute @s[scores={var6=200}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=306..310}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ tp @s ~-0.2 ~ ~
execute @s[scores={var6=300}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=406..410}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ tp @s ~0.2 ~ ~
execute @s[scores={var6=400}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=506..510}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ tp @s ~ ~ ~-0.2
execute @s[scores={var6=500}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=606..610}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ tp @s ~ ~ ~0.2
execute @s[scores={var6=600}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=706..710}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ tp @s ~-0.2 ~ ~
execute @s[scores={var6=700}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={var6=806..810}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ tp @s ~0.2 ~ ~
execute @s[scores={var6=800}] ~ ~ ~ scoreboard players set @s var6 -1
scoreboard players remove @s[scores={var6=1..}] var6 1
execute @s[scores={var6=-1,var1=4,var2=1}] ~ ~ ~ tag @e[type=rwm:king] add correct
execute @s[scores={var6=-1,var3=5,var4=4}] ~ ~ ~ tag @e[type=rwm:queen] add correct
execute @s[scores={var6=-1,var1=1,var2=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.jan.1
execute @s[scores={var6=-1,var1=1,var2=2}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.jan.2
execute @s[scores={var6=-1,var1=1,var2=3}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.jan.3
execute @s[scores={var6=-1,var1=1,var2=4}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.jan.4
execute @s[scores={var6=-1,var1=1,var2=5}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.jan.5
execute @s[scores={var6=-1,var1=2,var2=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.feb.1
execute @s[scores={var6=-1,var1=2,var2=2}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.feb.2
execute @s[scores={var6=-1,var1=2,var2=3}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.feb.3
execute @s[scores={var6=-1,var1=2,var2=4}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.feb.4
execute @s[scores={var6=-1,var1=2,var2=5}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.feb.5
execute @s[scores={var6=-1,var1=3,var2=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.mar.1
execute @s[scores={var6=-1,var1=3,var2=2}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.mar.2
execute @s[scores={var6=-1,var1=3,var2=3}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.mar.3
execute @s[scores={var6=-1,var1=3,var2=4}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.mar.4
execute @s[scores={var6=-1,var1=3,var2=5}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.mar.5
execute @s[scores={var6=-1,var1=4,var2=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.apr.1
execute @s[scores={var6=-1,var1=4,var2=2}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.apr.2
execute @s[scores={var6=-1,var1=4,var2=3}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.apr.3
execute @s[scores={var6=-1,var1=4,var2=4}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.apr.4
execute @s[scores={var6=-1,var1=4,var2=5}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.apr.5
execute @s[scores={var6=-1,var1=5,var2=1}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.may.1
execute @s[scores={var6=-1,var1=5,var2=2}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.may.2
execute @s[scores={var6=-1,var1=5,var2=3}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.may.3
execute @s[scores={var6=-1,var1=5,var2=4}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.may.4
execute @s[scores={var6=-1,var1=5,var2=5}] ~ ~ ~ dialogue change @e[type=rwm:king] npc.king.may.5
execute @s[scores={var6=-1,var3=1,var4=1}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.jan.1
execute @s[scores={var6=-1,var3=1,var4=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.jan.2
execute @s[scores={var6=-1,var3=1,var4=3}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.jan.3
execute @s[scores={var6=-1,var3=1,var4=4}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.jan.4
execute @s[scores={var6=-1,var3=1,var4=5}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.jan.5
execute @s[scores={var6=-1,var3=2,var4=1}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.feb.1
execute @s[scores={var6=-1,var3=2,var4=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.feb.2
execute @s[scores={var6=-1,var3=2,var4=3}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.feb.3
execute @s[scores={var6=-1,var3=2,var4=4}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.feb.4
execute @s[scores={var6=-1,var3=2,var4=5}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.feb.5
execute @s[scores={var6=-1,var3=3,var4=1}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.mar.1
execute @s[scores={var6=-1,var3=3,var4=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.mar.2
execute @s[scores={var6=-1,var3=3,var4=3}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.mar.3
execute @s[scores={var6=-1,var3=3,var4=4}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.mar.4
execute @s[scores={var6=-1,var3=3,var4=5}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.mar.5
execute @s[scores={var6=-1,var3=4,var4=1}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.apr.1
execute @s[scores={var6=-1,var3=4,var4=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.apr.2
execute @s[scores={var6=-1,var3=4,var4=3}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.apr.3
execute @s[scores={var6=-1,var3=4,var4=4}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.apr.4
execute @s[scores={var6=-1,var3=4,var4=5}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.apr.5
execute @s[scores={var6=-1,var3=5,var4=1}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.may.1
execute @s[scores={var6=-1,var3=5,var4=2}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.may.2
execute @s[scores={var6=-1,var3=5,var4=3}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.may.3
execute @s[scores={var6=-1,var3=5,var4=4}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.may.4
execute @s[scores={var6=-1,var3=5,var4=5}] ~ ~ ~ dialogue change @e[type=rwm:queen] npc.queen.may.5
execute @s[scores={var6=-1}] ~ ~ ~ fill 31 70 170 27 70 166 structure_void
execute @s[scores={var6=-1}] ~ ~ ~ execute @e[type=rwm:king] ~ ~ ~ setblock ~ ~ ~ air
execute @s[scores={var6=-1}] ~ ~ ~ execute @e[type=rwm:queen] ~ ~ ~ setblock ~ ~ ~ air
execute @s[scores={var6=-1}] ~ ~ ~ scoreboard players set @s var6 0

# Code stops running
execute @s[tag=end_signal,scores={var1=4,var2=1,var3=5,var4=4}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={hint=0}] ~ ~ ~ scoreboard players set @s hint 1200
execute @s[tag=end_signal,scores={var1=2,var2=5,var3=1,var4=2,hint=1200}] ~ ~ ~ scoreboard players set @s hint 0
execute @s[tag=end_signal,scores={var1=4,var2=2,var3=3,var4=4,hint=1200}] ~ ~ ~ scoreboard players set @s hint 0
execute @s[tag=end_signal,scores={address=30600}] ~ ~ ~ scoreboard players add @s address 2

execute @e[type=rwm:king,tag=correct] ~ ~ ~ particle rwm:chess_checkmark ~ ~2 ~
execute @e[type=rwm:queen,tag=correct] ~ ~ ~ particle rwm:chess_checkmark ~ ~2 ~

# Hint
execute @s[scores={path=1,second=0,hint=1}] ~ ~ ~ particle rwm:cake_icon 30 70 166
execute @s[scores={path=1,second=0,hint=1}] ~ ~ ~ particle rwm:cake_icon 31 70 169
scoreboard players add @s[scores={hint=1}] hint 1

particle rwm:sparkle 17 72 162
particle rwm:sparkle 39 72 167 