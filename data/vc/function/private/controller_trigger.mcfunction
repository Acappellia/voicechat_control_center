advancement revoke @s only vc:controller_trigger

## check cd
execute if score @s vc_controller_cd matches ..0 run return -1
scoreboard players set @s vc_controller_cd -5

## ray

tellraw @a "hi"