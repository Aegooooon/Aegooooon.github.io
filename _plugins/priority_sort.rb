module Jekyll
  class LowPriorityLast < Generator
    safe true
    priority :lowest

    def generate(site)
      site.posts.docs.sort_by! do |post|
        post.data['priority'] == 'low' ? 1 : 0
      end
    end
  end
end