#剣出す
execute positioned ~ ~-1.656 ~ run summon armor_stand ^ ^ ^ {Tags:["throwsword","MTentity"],Air:-1s,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],Pose:{Head:[90f,45f,0f]},Invisible:1b}

give @p minecraft:iron_sword{display:{Name:'{"text":"騎士の剣"}',Lore:['{"text":"っょぃ"}','{"text":"攻撃力16"}']},Unbreakable:1,HideFlags:7,Enchantments:[{id:sharpness,lvl:18}]}
