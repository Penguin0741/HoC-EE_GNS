
execute @s[scores={address=20100}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={address=20100}] ~ ~ ~ scoreboard players set @s var2 2
execute @s[scores={address=20100}] ~ ~ ~ scoreboard players set @s var3 3
execute @s[scores={address=20100}] ~ ~ ~ scoreboard players set @s var4 4
execute @s[scores={address=20100}] ~ ~ ~ scoreboard players set @s var5 5
execute @s[scores={address=20100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=20200}] ~ ~ ~ scoreboard players set @s var1 -200
execute @s[scores={address=20200}] ~ ~ ~ scoreboard players set @s var2 3
execute @s[scores={address=20200}] ~ ~ ~ scoreboard players set @s var3 4
execute @s[scores={address=20200}] ~ ~ ~ scoreboard players set @s var4 2
execute @s[scores={address=20200}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=20400}] ~ ~ ~ scoreboard players set @s var1 2
execute @s[scores={address=20400}] ~ ~ ~ scoreboard players set @s var2 4
execute @s[scores={address=20400}] ~ ~ ~ scoreboard players set @s var3 1
execute @s[scores={address=20400}] ~ ~ ~ scoreboard players set @s var4 3
execute @s[scores={address=20400}] ~ ~ ~ scoreboard players set @s var5 1
execute @s[scores={address=20400}] ~ ~ ~ tag @s add end_signal