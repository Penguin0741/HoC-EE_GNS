
# Increment movecount whenever the player reaches the next location
execute @s[scores={movecount=0}] ~ ~ ~ execute @a[x=-13,y=67,z=-254,dx=2,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=1}] ~ ~ ~ execute @a[x=-11,y=67,z=-254,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=2}] ~ ~ ~ execute @a[x=-11,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=3}] ~ ~ ~ execute @a[x=-13,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=4}] ~ ~ ~ execute @a[x=-13,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=5}] ~ ~ ~ execute @a[x=-11,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=6}] ~ ~ ~ execute @a[x=-11,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=7}] ~ ~ ~ execute @a[x=-13,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=8}] ~ ~ ~ execute @a[x=-12,y=67,z=-243,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=9}] ~ ~ ~ execute @a[x=-12,y=67,z=-235,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0
execute @s[scores={movecount=10}] ~ ~ ~ execute @a[x=-12,y=67,z=-222,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @s second 0

execute @s[scores={movecount=0}] ~ ~ ~ execute @a[x=-13,y=67,z=-254,dx=2,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 0.8
execute @s[scores={movecount=1}] ~ ~ ~ execute @a[x=-11,y=67,z=-254,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 0.85
execute @s[scores={movecount=2}] ~ ~ ~ execute @a[x=-11,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 0.9
execute @s[scores={movecount=3}] ~ ~ ~ execute @a[x=-13,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 0.95
execute @s[scores={movecount=4}] ~ ~ ~ execute @a[x=-13,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1
execute @s[scores={movecount=5}] ~ ~ ~ execute @a[x=-11,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.05
execute @s[scores={movecount=6}] ~ ~ ~ execute @a[x=-11,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.1
execute @s[scores={movecount=7}] ~ ~ ~ execute @a[x=-13,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.15
execute @s[scores={movecount=8}] ~ ~ ~ execute @a[x=-12,y=67,z=-243,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.2
execute @s[scores={movecount=9}] ~ ~ ~ execute @a[x=-12,y=67,z=-235,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.25
execute @s[scores={movecount=10}] ~ ~ ~ execute @a[x=-12,y=67,z=-222,dx=0,dy=1,dz=0] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ playsound random.orb @s ~ ~ ~ 0.75 1.3

execute @s[scores={movecount=0}] ~ ~ ~ execute @a[x=-13,y=67,z=-254,dx=2,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=1}] ~ ~ ~ execute @a[x=-11,y=67,z=-254,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=2}] ~ ~ ~ execute @a[x=-11,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=3}] ~ ~ ~ execute @a[x=-13,y=67,z=-252,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=4}] ~ ~ ~ execute @a[x=-13,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=5}] ~ ~ ~ execute @a[x=-11,y=67,z=-250,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=6}] ~ ~ ~ execute @a[x=-11,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=7}] ~ ~ ~ execute @a[x=-13,y=67,z=-248,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=8}] ~ ~ ~ execute @a[x=-12,y=67,z=-243,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=9}] ~ ~ ~ execute @a[x=-12,y=67,z=-235,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @s movecount 1
execute @s[scores={movecount=10}] ~ ~ ~ execute @a[x=-12,y=67,z=-222,dx=0,dy=1,dz=0] ~ ~ ~ function act/0/4

# Determine which set of directional actionbars should be displayed
execute @s[scores={movecount=0}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={movecount=1}] ~ ~ ~ scoreboard players set @s var2 2
execute @s[scores={movecount=2}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={movecount=3}] ~ ~ ~ scoreboard players set @s var2 3
execute @s[scores={movecount=4}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={movecount=5}] ~ ~ ~ scoreboard players set @s var2 2
execute @s[scores={movecount=6}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={movecount=7}] ~ ~ ~ scoreboard players set @s var2 3
execute @s[scores={movecount=8}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={movecount=9}] ~ ~ ~ scoreboard players set @s var2 4
execute @s[scores={movecount=10}] ~ ~ ~ scoreboard players set @s var2 5

# Keyboard-control actionbars
execute @s[tag=!touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3a","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3b","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3c","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3d","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3b","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3c","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3d","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3a","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3d","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3a","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3b","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3c","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=4}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3i","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3e","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3f","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3g","with": ["\n"]}]}
execute @s[tag=!touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.3h","with": ["\n"]}]}

# Touch-control actionbars
execute @s[tag=touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3a","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3b","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3c","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=1}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3d","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3b","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3c","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3d","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=2}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3a","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3d","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3a","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3b","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=3}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3c","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=4}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.3i","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=-45,ry=45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3e","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=45,ry=135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3f","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=135,ry=-135] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3g","with": ["\n"]}]}
execute @s[tag=touch,scores={var2=5}] ~ ~ ~ titleraw @a[rym=-135,ry=-45] actionbar {"rawtext":[{"translate":"actionbar.touch.0.3h","with": ["\n"]}]}

# Guideline particles
execute @s[scores={movecount=0,second=0}] ~ ~ ~ particle rwm:guide -12 67 -260
execute @s[scores={movecount=0,second=0}] ~ ~ ~ particle rwm:guide -12 67 -258
execute @s[scores={movecount=0,second=0}] ~ ~ ~ particle rwm:guide -12 67 -256
execute @s[scores={movecount=0,second=0}] ~ ~ ~ particle rwm:guide -12 67 -254

execute @s[scores={movecount=1,second=0}] ~ ~ ~ particle rwm:guide -12 67 -254
execute @s[scores={movecount=1,second=0}] ~ ~ ~ particle rwm:guide -11 67 -254

execute @s[scores={movecount=2,second=0}] ~ ~ ~ particle rwm:guide -11 67 -254
execute @s[scores={movecount=2,second=0}] ~ ~ ~ particle rwm:guide -11 67 -253
execute @s[scores={movecount=2,second=0}] ~ ~ ~ particle rwm:guide -11 67 -252

execute @s[scores={movecount=3,second=0}] ~ ~ ~ particle rwm:guide -11 67 -252
execute @s[scores={movecount=3,second=0}] ~ ~ ~ particle rwm:guide -12 67 -252
execute @s[scores={movecount=3,second=0}] ~ ~ ~ particle rwm:guide -13 67 -252

execute @s[scores={movecount=4,second=0}] ~ ~ ~ particle rwm:guide -13 67 -252
execute @s[scores={movecount=4,second=0}] ~ ~ ~ particle rwm:guide -13 67 -251
execute @s[scores={movecount=4,second=0}] ~ ~ ~ particle rwm:guide -13 67 -250

execute @s[scores={movecount=5,second=0}] ~ ~ ~ particle rwm:guide -13 67 -250
execute @s[scores={movecount=5,second=0}] ~ ~ ~ particle rwm:guide -12 67 -250
execute @s[scores={movecount=5,second=0}] ~ ~ ~ particle rwm:guide -11 67 -250

execute @s[scores={movecount=6,second=0}] ~ ~ ~ particle rwm:guide -11 67 -250
execute @s[scores={movecount=6,second=0}] ~ ~ ~ particle rwm:guide -11 67 -249
execute @s[scores={movecount=6,second=0}] ~ ~ ~ particle rwm:guide -11 67 -248

execute @s[scores={movecount=7,second=0}] ~ ~ ~ particle rwm:guide -11 67 -248
execute @s[scores={movecount=7,second=0}] ~ ~ ~ particle rwm:guide -12 67 -248
execute @s[scores={movecount=7,second=0}] ~ ~ ~ particle rwm:guide -13 67 -248

execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -13 67 -248
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -13 67 -247
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -13 67 -246
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -13 67 -245
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -12 67 -244
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -12 67 -243
execute @s[scores={movecount=8,second=0}] ~ ~ ~ particle rwm:guide -12 67 -242

execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -12 67 -242
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -13 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -14 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -15 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -16 67 -240
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -16 67 -239
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -16 67 -238
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -15 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -14 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -13 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -11 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -10 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -9 67 -241
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -8 67 -240
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -8 67 -239
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -8 67 -238
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -9 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -10 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -11 67 -237
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -12 67 -236
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -12 67 -235
execute @s[scores={movecount=9,second=0}] ~ ~ ~ particle rwm:guide -12 67 -234

execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -234
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -233
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -232
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -13 67 -231
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -13 66 -230
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -13 66 -229
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -13 67 -228
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -13 67 -227
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -226
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 66 -225
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 66 -224
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 66 -223
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -222
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -221
execute @s[scores={movecount=10,second=0}] ~ ~ ~ particle rwm:guide -12 67 -220