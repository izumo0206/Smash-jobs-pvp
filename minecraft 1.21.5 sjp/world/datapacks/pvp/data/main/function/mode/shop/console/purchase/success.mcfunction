$tellraw @s [{text:'購入: ',color:'green'},{text:'$(name)',color:'white',bold:1b},{text:'  所持コイン: ',color:'yellow'},{score:{name:'@s',objective:'ShopCoin'},color:'gold',bold:1b}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.4
