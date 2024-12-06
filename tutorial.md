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

### World generation (Worldgen)
### Density Functions
We start with grouping them and explaining its effects (or how you can see an effect on this site at least)



Important to know is, what these types of these arguments are:
<br>String: Basically a link to another density function as the name of it ("minecraft:overworld/errosion" or "namespace:your_function")
<br>Float: Can be a positive or negative value with a comma or without
<br>Object: Here you can access all build in functions, its also the only way to access noise!
<br>I will use the word "map" now, which will be either a string or object, that results in a XYZ maplike structure.

### Density functions that accept string, float and objects

***Add (2 Arguments)***
<br>You can use this to add or subtract values. To subtract, just use a negative value.
This will influence either a "map" like thing, like noise, based on xz or xy position
or add to every position the float value.
After this function it returns the combined "map".

***Max (2 Arguments)***
<br>With this you will compare 2 values to each other and return the highest one.
If you compare a value with a map, the map will return with the changed values where the value is bigger.
If you compare two maps, each position will be compared and results in a new return map
with the highest values.

***Min (2 Arguments)***
<br>With this you will compare 2 values to each other and return the lowest one.
If you compare a value with a map, the map will return with the changed values where the value is bigger.
If you compare two maps, each position will be compared and results in a new return map
with the lowest values.

***Mul (2 Arguments)***
<br>Mul stands for multiplication. It has a few uses.
It can be used for negating positive values or doing the same as the abs(oltue) function
when having a negative value multiplied by -1.
You can change with it intensitys based on the value on a position on a map.
You can even use it to multiply two maps. Same as always, each position on the map will
be calculated with another.

***Abs (1 Argument)***
<br>This function is used to make out of negative values abs(olute) values,
means from negative to positive and positive stays positive.

***Cube (1 Argument)***
<br>Simple just multiplies the position value³, so like x*x*x.
If you have a negative value it stays negative. 

***Square (1 Argument)***
<br>Simple just multiplies the position value², so like x*x.
If you have a negative value it changes to a positive value.

***Squeeze (1 Argument)***
<br>clamps the input between −1 and 1, then transforms it using x/2 - x*x*x/24.
Always outputs a value between -0.4583 and 	0.4583. Even if input is like 10 & 20, same output
because it get clamped to 1 or -1 before.

***Half negative (1 Argument)***
<br>This function checks if the value is negative and if it will return the negative value halved.
As always on maps it checks each position.
If you get input 0.23 it returns 0.23, but if its -0.34 it returns -0.17

***Quarter negative (1 Argument)***
<br>This function checks if the value is negative and if it will return the negative value divided by 4.
As always on maps it checks each position.
If you get input 0.23 it returns 0.23, but if its -0.34 it returns -0.085

***Blend Density (1 Argument)***
<br>This is a special minecraft function, which use is not explained somewhere sadly...

***Cache 2d (1 Argument)***
<br>Only computes the input density once per horizontal position. If the same input is referenced again,
it wont calculate again these positions.

***Cache once (1 Argument)***
<br>This will cache the input maps XZ values for further computing. So less calculation time.

***Flat cache (1 Argument)***
<br>Calculate the value per 4×4 column (Value at each block in one column is the same). 
And it is calculated only once per column, at Y=0)

***Cache all in cell (1 Argument)***
<br>Used by the game onto final_density and should not be referenced in data packs.

***Interpolated (1 Argument)***

***Range choice (1 Argument)***
<br>This is basically the only if/else you have in the density functions. 
You can choose a upper end(max exclusive) and a lower end (min inclusive) and a value
that should be set if below or above, and also a value when between these values.
The check is done on the input value or input map as always per block.
You need to smart combine this function with maps to create the map you want.

### Density functions that accept float and objects
***Clamp (1 Argument)***
<br>Simple just sets the values above max to max and the values below min to min.
Like min = 0.5 and max =0.8, value 1.5 will be exchanged with 0.8, value -1 will be 0.5 and value 0.1 wil be 0.5 also.

***Spline (1 Argument)***


### Density functions that accept only something else
***Constant (1 Float)***

***Noise (1 Noise string/id)***

***Shifted noise (1 Noise string/id)***

***Weird scaled sampler (1 Noise string/id)***

***Shift (1 density function string)***

***Shift a (1 density function string)***

***Shift b (1 density function string)***

***Old blended noise (Only floats and integers)***

***Y clamped gradient (Only floats and integers)***


### Density functions that accept no arguments
***Beardifier***

***Blend alpha***

***Blend offset***

***End islands***


### Good density function combinations:
blahhh
