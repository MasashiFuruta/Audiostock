module ApplicationHelper

  # カテゴリーツリーを作る
  def draw_tree(category)
    content_tag(:li, class: "line-hyphen") do
      link_to('#', category.name)
      category.children.map do |child|
        content_tag(:ul, draw_tree(child))
      end
    end
  end

  def draw_ancestors(ancestors)
    # p ancestors
    # p ancestors.class
    tag.ul do
      ancestors.each do |ancestor|
        tag.li class: "line-hyphen" do
          tag.a ancestor["name"]
          new_ancestors = ancestor["children"]
          draw_ancestors(new_ancestors)
        end
      end
      #   p ancestor["name"]
      #   new_ancestors = ancestor["children"]
      #   draw_ancestors(new_ancestors)
    end
  end

  def aaa
    content_tag(:ul) do
      content_tag(:li, class: "line-hyphen") do
        "aaa"
      end
    end
  end
end

# /- @ancestors.each_with_index do |ancestor, index|
# /  ul
# /    li.line-hyphen=link_to ancestor.name, web_bgm_url(ancestor)
# /    - if index == @ancestors.size - 1
# /      ul
# /        li.line-hyphen= @node.name
# /          - @children.each do |child|
# /            = child.name


