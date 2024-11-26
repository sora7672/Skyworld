# Explanation for the files
Im using this file to explain in detail different datapack parts that i explored.
Because the documentation for datapacks are just to complicated to understand when you
fresh start with it.

So my goal with this, is to provide people a easyer way to understand it and create some awesome datapacks!

With that, im looking forward to see what you achieve!

## General info
Note: Everything we talk about is below `/data` if not stated different 
<br>and its only for **1.20.1** tested.

When you want to change vanilla behaviour of something,
<br>you need to overwrite the vanilla part of it. 
#### Example loot table(drops) of cobblestone:

You need to go to `minecraft/loot_tables/blocks` -> `cobblestone.json`
<br>Because thats how its saved in minecraft. Probably that works the same with mods.
<br>Not tested yet!

You then create a new loot table, which either overrides the vanilla one
<br>or rolls one time for sure and links to another loot table, like we did in this datapack.
<br>There we link it to the name `"name": "skyworld:blocks/cobblestone"`
<br>The value of name is syntax-wise build like `name_of_your_folder:subfolder/filename`
<br>This principle can be used to understand most json files here.
```
 "entries": [
        {
          "type": "minecraft:loot_table",
          "conditions": [
            {
              "condition": "minecraft:survives_explosion"
            }
          ],
          "name": "skyworld:blocks/cobblestone"
        }
```

Then we have functions and advancements. You can override the functions inside the `minecraft/tags/functions` folder.
<br>It looks to me like you have access to vanilla events and functions there.
<br>Inside the json in there, you can either replace or add new function calls to that specific function/event.
<br>Probably its accessing an event handler, that just adds stuff to do to a list 
<br>and when the event get triggered odes the stuff.

For better understanding further we will work now with pseudo names,
<br>one is apple and the other bread.
```
data/
├── apple/
│   ├── loot_tables/
│   │   ├── blocks/
│   │   │   └── dirt.json
│   │   └── entities/
│   │       └── zombie.json
│   └── advancements/
│       └── diamond.json
│
├── bread/
│   ├── recipes/
│   │   └── bread_recipe.json
│   └── functions/
│       ├── myfunction.mcfunction
│       └── advance_apple.mcfunction
│   
└── minecraft/
    └── loot_tables/
       └── blocks/
            ├── dirt.json
            └── stone.json

```

As you see the new added functions are no json file.
<br>They use a minecraft own file format, but you can open them and edit them as a text file.

TBC