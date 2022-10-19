function testpack:grenades/snowball_type
function testpack:grenades/snowball_explosive
function testpack:grenades/snowball_fire
function testpack:grenades/snowball_water

function testpack:grenades/carrot_type
function testpack:grenades/launcher_detect
function testpack:grenades/missile_detect
function testpack:grenades/missile_explode
function testpack:grenades/flame_detect
function testpack:grenades/gun_detect

function testpack:grenades/ammo

scoreboard players set @a type 0
scoreboard players set @a type2 0
scoreboard players reset @a[scores={mlclick=1..}] mlclick
scoreboard players reset @a[scores={ftclick=2..}] ftclick