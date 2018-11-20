class Web::Categories::BgmController < ApplicationController
  def index
    @roots, @children = Category.category_tree("bgm")
    render :template => 'web/categories/index'
  end

  def show
    @id = params[:id]
    @children = []
    node = Category.find(@id)
    @ancestors = Category.ancestors_of(node)
    @children = Category.children_of(node)
    @root = @ancestors[1]
    @to_node = @ancestors.to_a.drop(2) << node
    render :template => 'web/categories/show'
  end
end
