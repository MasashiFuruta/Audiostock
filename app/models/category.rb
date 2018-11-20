class Category < ApplicationRecord
  has_ancestry

  class << self
    def scream(args)
      puts args
    end

    def category_tree(category)
      node = Category.find_by(name: category)
      roots = Category.children_of(node)
      children = []
      roots.length
      roots.each do |root|
        children = Category.children_of(root)
        puts children.length
        children.each do |child|
          p child.name
        end
      end
      p roots
      return roots, children
    end
  end
end
