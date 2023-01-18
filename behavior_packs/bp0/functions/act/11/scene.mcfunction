#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/11/scene"}]}

execute @s[scores={address=110000}] ~ ~ ~ function act/11/0_
execute @s[scores={address=110100}] ~ ~ ~ function act/11/1_
execute @s[scores={address=110103}] ~ ~ ~ function act/11/1_start
execute @s[scores={address=110200}] ~ ~ ~ function act/11/2_
execute @s[scores={address=110201}] ~ ~ ~ function act/11/2_success
execute @s[scores={address=110202}] ~ ~ ~ function act/11/2_failure
execute @s[scores={address=110300}] ~ ~ ~ function act/11/3_
execute @s[scores={address=110301}] ~ ~ ~ function act/11/3_success
execute @s[scores={address=110400}] ~ ~ ~ function act/11/4_
execute @s[scores={address=110401}] ~ ~ ~ function act/11/4_success
execute @s[scores={address=110402}] ~ ~ ~ function act/11/4_failure
execute @s[scores={address=110500}] ~ ~ ~ function act/11/5_
execute @s[scores={address=110501}] ~ ~ ~ function act/11/5_success
execute @s[scores={address=110600}] ~ ~ ~ function act/11/6_
execute @s[scores={address=110601}] ~ ~ ~ function act/11/6_success
execute @s[scores={address=110602}] ~ ~ ~ function act/11/6_failure
execute @s[scores={address=110603}] ~ ~ ~ function act/11/6_start
execute @s[scores={address=110700}] ~ ~ ~ function act/11/7_
execute @s[scores={address=110701}] ~ ~ ~ function act/11/7_success
execute @s[scores={address=110702}] ~ ~ ~ function act/11/7_failure
execute @s[scores={address=110703}] ~ ~ ~ function act/11/7_start
execute @s[scores={address=110800}] ~ ~ ~ function act/11/8_
execute @s[scores={address=110900}] ~ ~ ~ function act/11/9_

# Teleporters
#tp @a[x=176,y=42,z=-532,dx=2,dy=2,dz=2] 158 45 -531
#tp @a[x=146,y=45,z=-532,dx=2,dy=2,dz=2] 146 47 -552
#tp @a[x=182,y=47,z=-613,dx=2,dy=2,dz=2] 172 47 -612
#tp @a[x=171,y=50,z=-630,dx=2,dy=2,dz=2] 172 50 -641
#tp @a[x=262,y=42,z=-615,dx=2,dy=2,dz=2] 274 41 -609
#tp @a[x=267,y=44,z=-642,dx=2,dy=2,dz=2] 256 45 -638
#tp @a[x=280,y=45,z=-562,dx=2,dy=2,dz=2] 267 48 -547

# Falling in rooms
execute @s[tag=!jumping,x=242,y=35,z=-647,dx=40,dy=4,dz=40] ~ ~ ~ scoreboard players set @s var7 1
execute @s[tag=!jumping,x=253,y=35,z=-572,dx=40,dy=5,dz=40] ~ ~ ~ scoreboard players set @s var7 2
execute @s[tag=!jumping,x=143,y=35,z=-563,dx=50,dy=5,dz=40] ~ ~ ~ scoreboard players set @s var7 3
execute @s[tag=!jumping,x=168,y=35,z=-646,dx=40,dy=5,dz=40] ~ ~ ~ scoreboard players set @s var7 4
execute @s[tag=!jumping,x=238,y=35,z=-598,dx=21,dy=5,dz=20] ~ ~ ~ scoreboard players set @s var7 5
execute @s[tag=!jumping,x=191,y=35,z=-598,dx=21,dy=5,dz=20] ~ ~ ~ scoreboard players set @s var7 6
execute @s[tag=!jumping,x=215,y=35,z=-622,dx=20,dy=5,dz=21] ~ ~ ~ scoreboard players set @s var7 7
execute @s[scores={var7=1..,var8=0}] ~ ~ ~ scoreboard players set @s var8 40
execute @s[scores={var8=40}] ~ ~ ~ playsound bubble.downinside @a ~ ~ ~ 1 1 1
execute @s[scores={var8=40}] ~ ~ ~ effect @s blindness 10 1 true
execute @s[scores={var8=40}] ~ ~ ~ effect @s slowness 10 4 true
execute @s[scores={var7=1,var8=20}] ~ ~ ~ tp @s 250 42 -613 225 0
execute @s[scores={var7=2,var8=20}] ~ ~ ~ tp @s 250 42 -563 315 0
execute @s[scores={var7=3,var8=20}] ~ ~ ~ tp @s 200 42 -563 45 0
execute @s[scores={var7=4,var8=20}] ~ ~ ~ tp @s 200 42 -613 135 0
execute @s[scores={var7=5,var8=20}] ~ ~ ~ tp @s 234 41 -588 90 0
execute @s[scores={var7=6,var8=20}] ~ ~ ~ tp @s 216 41 -588 270 0
execute @s[scores={var7=7,var8=20}] ~ ~ ~ tp @s 225 41 -598 0 0
execute @s[scores={var8=20}] ~ ~ ~ effect @s clear
execute @s[scores={var8=18}] ~ ~ ~ playsound item.trident.riptide_2 @a ~ ~ ~ 1 0.5 1
execute @s[scores={var8=1..20}] ~ ~ ~ particle rwm:whirlwind ~ ~ ~
execute @s[scores={var8=1}] ~ ~ ~ scoreboard players set @s var7 0
execute @s[scores={var8=1..}] ~ ~ ~ scoreboard players remove @s var8 1

# Side room dollies
execute @s[tag=!jumping,x=176,y=42,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 177 42 -531
execute @s[tag=!jumping,x=176,y=42,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 166 48 -531
execute @s[tag=!jumping,x=176,y=42,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 154 47 -531

execute @s[tag=!jumping,x=146,y=45,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 147 45 -531
execute @s[tag=!jumping,x=146,y=45,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 146 51 -543
execute @s[tag=!jumping,x=146,y=45,z=-532,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 146 48 -555

execute @s[tag=!jumping,x=182,y=47,z=-613,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 183 47 -612
execute @s[tag=!jumping,x=182,y=47,z=-613,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 177 49 -612
execute @s[tag=!jumping,x=182,y=47,z=-613,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 167 47 -612

execute @s[tag=!jumping,x=171,y=50,z=-630,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 172 50 -629
execute @s[tag=!jumping,x=171,y=50,z=-630,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 172 53 -634
execute @s[tag=!jumping,x=171,y=50,z=-630,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 172 50 -644

execute @s[tag=!jumping,x=262,y=42,z=-615,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 263 42 -614
execute @s[tag=!jumping,x=262,y=42,z=-615,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 268 44 -611
execute @s[tag=!jumping,x=262,y=42,z=-615,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 277 41 -608

execute @s[tag=!jumping,x=267,y=44,z=-642,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 268 44 -641
execute @s[tag=!jumping,x=267,y=44,z=-642,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 261 48 -639
execute @s[tag=!jumping,x=267,y=44,z=-642,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 253 46 -637

execute @s[tag=!jumping,x=280,y=45,z=-562,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_dolly 281 45 -561
execute @s[tag=!jumping,x=280,y=45,z=-562,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 272 50 -552
execute @s[tag=!jumping,x=280,y=45,z=-562,dx=2,dy=2,dz=2] ~ ~ ~ summon rwm:jump_target 266 48 -546

scoreboard players set @s var6 0
execute @e[type=rwm:jump_target] ~ ~ ~ scoreboard players add @a var6 1

execute @s[scores={var6=1..}] ~ ~ ~ execute @e[type=rwm:jump_dolly] ~ ~ ~ particle rwm:jump_disk ~ ~1 ~
execute @s[tag=!jumping,scores={var6=1..}] ~ ~ ~ playsound lodestone_compass.link_compass_to_lodestone @a ~ ~ ~ 1 1 1
execute @s[tag=!jumping,scores={var6=1..}] ~ ~ ~ ride @s start_riding @e[type=rwm:jump_dolly]
execute @s[tag=!jumping,scores={var6=1..}] ~ ~ ~ tag @s add jumping

execute @s[tag=jumping,scores={var6=0}] ~ ~ ~ playsound place.amethyst_block @a ~ ~ ~ 1 1 1
execute @s[tag=jumping,scores={var6=0}] ~ ~ ~ tp @s ~ ~1 ~
execute @s[tag=jumping,scores={var6=0}] ~ ~ ~ event entity @e[type=rwm:jump_dolly] despawn
execute @s[tag=jumping,scores={var6=0}] ~ ~ ~ tag @s remove jumping

execute @e[type=rwm:jump_dolly] ~ ~ ~ event entity @e[type=rwm:jump_target,r=2] despawn

execute @e[type=rwm:time_agent,tag=stunned,x=215,y=41,z=-598,dx=20,dy=0,dz=20] ~ ~ ~ particle rwm:stunned ~ ~1 ~

execute @s[x=100,y=0,z=-700,dx=250,dy=10,dz=200] ~ ~ ~ function act/11/3_oob