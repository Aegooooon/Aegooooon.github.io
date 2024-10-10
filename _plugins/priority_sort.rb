module Jekyll
  module PrioritySort
    def priority_sort(posts)
      posts.sort_by do |post|
        case post['priority']
        when 'high'
          1
        when 'medium'
          2
        when 'low'
          3
        else
          4
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::PrioritySort)