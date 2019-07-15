function biometunes:triggers/prebiome

# Enable intro track
execute unless score @s biome matches 2 run tellraw @s[tag=receiveBiomeMsg, scores={soundtrackState=1}] ["",{"text":"You entered a desert biome","color":"gray","italic":true}]

# Set biome variable to plains
scoreboard players set @s biome 2
scoreboard players set @s biomeAmbient 2

# Set soundtrack time
scoreboard players set @s musicLength 4980
scoreboard players operation @s[tag=!playing] soundtrackTimer = @s[tag=!playing] musicLength

# Set ambient time
scoreboard players set @s ambientLength 0
scoreboard players operation @s[tag=!playingAmbient] ambientTimer = @s[tag=!playingAmbient] ambientLength


# Reset all advancements and music
function biometunes:triggers/reset