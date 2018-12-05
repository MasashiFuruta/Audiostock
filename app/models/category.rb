class Category < ApplicationRecord
  has_ancestry cache_depth: true

  class << self
    # def category_tree(category)
    #   node = Category.find_by(name: category)
    #   roots = Category.children_of(node)
    #   children = []
    #   roots.length
    #   roots.each do |root|
    #     children = Category.children_of(root)
    #     puts children.length
    #     children.each do |child|
    #       p child.name
    #     end
    #   end
    #   p roots
    #   return roots, children
    # end
    #
    def category_tree(category)
      tree = Category.find_by_name(category).subtree.arrange_serializable
    end

    def treee
      tree = Category.find_by_name("劇").subtree.arrange_serializable
      tree.each do |parent, children|
        {
          my_id: parent,
          my_children: children
        }
      end
      tree = Category.find_by_name("劇").subtree.arrange_serializable
      tree.each do |parent|
        puts "aaaa"
        p parent[0]
        puts "aaaa"
      end
    end
  end
end
