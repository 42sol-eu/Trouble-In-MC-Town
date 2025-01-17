# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon five zombies
summon zombie ~ ~ ~0.2 {Tags:["sp_summoned"]}
summon zombie ~0.2 ~ ~ {Tags:["sp_summoned"]}
summon zombie ~ ~0.2 ~ {Tags:["sp_summoned"]}
summon zombie ~-0.2 ~ ~ {Tags:["sp_summoned"]}
summon zombie ~ ~-0.2 ~ {Tags:["sp_summoned"]}

# tag all zombies as zombie hord
tag @e[type=zombie, distance=..1] add sp_zombie_hord

# set all attack and movement frequencies higher
execute as @e[type=zombie, tag=sp_zombie_hord] as @s run attribute @s minecraft:generic.movement_speed base set 0.3
execute as @e[type=zombie, tag=sp_zombie_hord] as @s run attribute @s minecraft:generic.attack_speed base set 1

# make angry at nearest player
execute as @e[type=zombie, sort=nearest, distance=..2] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
