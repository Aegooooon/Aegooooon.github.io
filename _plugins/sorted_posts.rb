module Jekyll
      class SortedPostsGenerator < Generator
        safe true
    
        def generate(site)
          all_posts = site.posts.docs
          high_priority_posts = all_posts.reject { |post| post.data['priority'] == 'low' }
          low_priority_posts = all_posts.select { |post| post.data['priority'] == 'low' }
          site.config['sorted_posts'] = high_priority_posts + low_priority_posts
        end
      end
    end