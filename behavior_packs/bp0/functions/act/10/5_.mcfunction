
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.5"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.5"}]}

execute @s[tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:fake_agent] @s npc.agent.3.1

execute @e[type=agent] ~ ~ ~ particle rwm:sparkle ~ ~ ~
execute @s[scores={second=0}] ~ ~ ~ execute @e[type=agent] ~ ~ ~ particle rwm:interact ~-0.5 ~1 ~-0.5

execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 23 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 22 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 21 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 20 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 19 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 18 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 17 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 16 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 15 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 14 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 13 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 12 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 11 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 10 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 9 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 8 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 7 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 6 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 5 72 32
execute @s[scores={second=0}] ~ ~ ~ particle rwm:guide 4 72 32