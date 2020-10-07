package com.model;

public class RecipeDTO {

private String recipe_name, recipe_rate, recipe_preference, recipe_img, recipe_ingredient;
	
	public RecipeDTO() {}
	
	public RecipeDTO(String recipe_name, String recipe_rate, String recipe_preference, String recipe_img,
			String recipe_ingredient) {
		this.recipe_name = recipe_name;
		this.recipe_rate = recipe_rate;
		this.recipe_preference = recipe_preference;
		this.recipe_img = recipe_img;
		this.recipe_ingredient = recipe_ingredient;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}

	public String getRecipe_rate() {
		return recipe_rate;
	}

	public void setRecipe_rate(String recipe_rate) {
		this.recipe_rate = recipe_rate;
	}

	public String getRecipe_preference() {
		return recipe_preference;
	}

	public void setRecipe_preference(String recipe_preference) {
		this.recipe_preference = recipe_preference;
	}

	public String getRecipe_img() {
		return recipe_img;
	}

	public void setRecipe_img(String recipe_img) {
		this.recipe_img = recipe_img;
	}

	public String getRecipe_ingredient() {
		return recipe_ingredient;
	}

	public void setRecipe_ingredient(String recipe_ingredient) {
		this.recipe_ingredient = recipe_ingredient;
	}
	
	
}
