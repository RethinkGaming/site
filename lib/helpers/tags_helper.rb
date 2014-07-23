require 'set'

module TagsHelper
  def all_tags
    tags = Set.new
    @items.each do |item|
      (item[:tags] || []).each { |t| tags.add(t) }
    end
    tags
  end

  def items_with_tag(tag)
    i = @items.select { |i| (i[:tags] || []).include?(tag) }

    # hack to make title show up for mustache template
    i.map do |i| 
      i.define_singleton_method(:title) do
        i[:title]
      end
    end

    i
  end
end

