class Web::Categories::BgmController < ApplicationController
  before_action :set_category, only: [:index, :show]

  def index
    @node = Category.find_by_name(@category)
    render :template => 'web/categories/index'
  end

  def show
    @id = params[:id]
    @children = []
    @node = Category.find(@id)
    @ancestors =  Category.ancestors_of(@node)
    @children = nil || Category.children_of(@node)
    @root = @ancestors[1]
    @to_node =  @ancestors.to_a.drop(2) << @node
    render :template => 'web/categories/show'
  end

  def set_category
    @category = "bgm"
  end
end
