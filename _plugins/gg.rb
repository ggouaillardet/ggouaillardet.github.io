module Jekyll
  class PostSubSetPage < Page
    def initialize(site, base, dir, lang, page , posts, more)
      @site = site
      @base = base
      @dir = dir
      @name = "page#{page}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'lang.html')

      # Define data which can be used in lang.html
      self.data['lang'] = lang
      self.data['title'] = "Lang: #{lang}"
      self.data['posts'] = posts
      self.data['number'] = page
      self.data['more'] = more

      # Add next button for navigation
      if more
        nextNumber = page + 1
        self.data['nextUrl'] = File.join('', dir, "page#{nextNumber}/index.html")
      end
      # Add prev button for navigation
      if page > 1
        prevNumber = page - 1
        self.data['prevUrl'] = File.join('', dir, "page#{prevNumber}/index.html")
      end
    end
  end

  class PaginatorGenerator < Generator
    def generateList(site, list, dir, lang)
      # Sort by date descending
      list = list.sort! { |a,b| b.date <=> a.date }
      # Put each page file in a subfolder of dir
      dir = File.join(dir, lang)
      # Use pagination of 5
      pagination = 5

      # iterate through all posts
      number = 1
      counter = 0
      posts = []
      list.each do |post|
        posts.push(post)
        counter += 1
        if posts.length == pagination or counter == list.length
          site.pages << PostSubSetPage.new(site, site.source,
              dir, lang, number, posts, counter < list.length)
          number += 1
          posts = []
        end
      end
    end
    def generate(site)
      ## fetch all posts by categories
      #langs = {}
      #site.posts.each {|p| 'fr' 'en' {|c| (langs[c] ||= []) << p } }
      ## generate pages per category
      #langs.each do |lang, list|
        #self.generateList(site, list, 'categories', lang)
      #end
      # generate pagination for all posts
      self.generateList(site, site.posts, 'langs', 'all')
    end
  end
end
