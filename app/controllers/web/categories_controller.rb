class Web::CategoriesController < ::WebController
  def bgm
    @id = params[:id]
    @children = []
    if @id != nil
      node = Category.find(@id)
      @ancestors = Category.ancestors_of(node)
      @children = Category.children_of(node)
      @root = @ancestors[1]
      @to_node = @ancestors.to_a.drop(2) << node
    else
      @bgm = Category.find_by(name: "bgm")
      @roots = Category.children_of(@bgm)
      @roots.each do |root|
        @children = Category.children_of(root)
      end
    end
    render :action => 'categories/index'
  end

  def se
    render :action => 'categories/index'
  end

  def voice
    render :action => 'categories/index'
  end

  def vocal
    render :action => 'categories/index'
  end
end
