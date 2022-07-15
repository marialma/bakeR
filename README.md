# bakeR
### A package to help bakers scale their recipes
 
## How to use
### `bake()` Usage
` bake (chosen_recipe, limiting_ingredient, amount_to_modify) `
#### Arguments
* `chosen_recipe`: this selects the recipe you want to use. If you choose (or misspell) a recipe that isn't in the list, it will return a list of valid recipes. 

* `limiting_ingredient` (optional): If limiting ingredient is not specified, function will return just the base recipe. If a limiting ingredient is specified, then you will need to specify the `amount_to_modify` as well. Basically, specify this ingredient to scale the recipe to use however much of the limiting ingredient you have. 

* `amount_to_modify` (optional): Only optional if `limiting_ingredient` is not specified. This is the amount to scale the recipe by. 

####  Example

If you want to make financiers, but only have 100 grams of egg whites, you can specify: 
`bake("financier" "egg whites", 100)`
and it will scale the recipe accordingly.


## Notes
Recipe measurements are given in grams or mls. 
Cook times are not given because they may change as the recipe volumes change. Use your judgement as a baker and do other research. 

## To do:
* add information about where recipes came from
* include ability for user to add their own recipes
* add a way to search recipes? 