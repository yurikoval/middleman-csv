require 'csv'

class CsvGenerator < ::Middleman::Extension
  option :my_option, 'default', 'An example option'

  def initialize(app, options_hash = {}, &block)
    super
  end

  def after_build(builder)
    @builder = builder
    build_csv('posts.csv', posts)
  end

  def build_csv(name, pages)
    build_dir = app.config.build_dir
    file_path = File.join(build_dir, name)
    generte_csv(pages, file_path)

    @builder.thor.say_status :create, file_path

    return file_path
  end

  def generte_csv(pages, path)
    CSV.open(path, "wb") do |csv|
      csv << %w[title summary slug locale body published_on]
      pages.each do |page|
        if page.is_a?(Middleman::Blog::BlogArticle)
          csv << [
            page.title,
            page.summary,
            page.slug,
            page.locale,
            page.render(layout: false),
            page.date.strftime("%Y-%m-%d")
          ]
        end
      end
    end
  end

  def posts
    @posts ||= app.sitemap.resources.find_all { |p| p.ext == ".html" && !p.data.ignore }
  end
end
