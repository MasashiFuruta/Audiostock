class Web::Categories::BgmController < WebController
  before_action :set_category, only: [:index, :show]

  def index
    @node = Category.find_by_name(@category)
    @subtree = @node.subtree.from_depth(1).arrange
    render :template => 'web/categories/index'
  end

  def show
    @id = params[:id]
    @node = Category.find(@id)
    @root = (@node.ancestors.to_a)[1]
    @path = @node.path.from_depth(2).arrange
    @children = @node.children
    render :template => 'web/categories/show'
  end

  def set_category
    @category = "bgm"
  end
end
