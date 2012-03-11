class RecipeCategoriesController < ApplicationController
  # GET /recipe_categories
  # GET /recipe_categories.json
  def index
    @recipe_categories = RecipeCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_categories }
    end
  end

  # GET /recipe_categories/1
  # GET /recipe_categories/1.json
  def show
    @recipe_category = RecipeCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_category }
    end
  end

  # GET /recipe_categories/new
  # GET /recipe_categories/new.json
  def new
    @recipe_category = RecipeCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_category }
    end
  end

  # GET /recipe_categories/1/edit
  def edit
    @recipe_category = RecipeCategory.find(params[:id])
  end

  # POST /recipe_categories
  # POST /recipe_categories.json
  def create
    @recipe_category = RecipeCategory.new(params[:recipe_category])

    respond_to do |format|
      if @recipe_category.save
        format.html { redirect_to @recipe_category, notice: 'Recipe category was successfully created.' }
        format.json { render json: @recipe_category, status: :created, location: @recipe_category }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_categories/1
  # PUT /recipe_categories/1.json
  def update
    @recipe_category = RecipeCategory.find(params[:id])

    respond_to do |format|
      if @recipe_category.update_attributes(params[:recipe_category])
        format.html { redirect_to @recipe_category, notice: 'Recipe category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_categories/1
  # DELETE /recipe_categories/1.json
  def destroy
    @recipe_category = RecipeCategory.find(params[:id])
    @recipe_category.destroy

    respond_to do |format|
      format.html { redirect_to recipe_categories_url }
      format.json { head :no_content }
    end
  end
end
