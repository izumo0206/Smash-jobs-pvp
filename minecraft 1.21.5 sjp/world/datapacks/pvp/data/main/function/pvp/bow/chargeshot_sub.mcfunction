#弓強奪
execute as @a[tag=Bow] run clear @a[tag=Bow] minecraft:bow


#弓と矢再配布
execute as @a[tag=Bow] run give @a[tag=Bow] minecraft:bow[custom_name="ヴィガー・ウィンド",enchantments={"power":3,"infinity":1},lore=["この矢に、願いを乗せて"],unbreakable={}]
