# middleman-csv

Middleman extension for generating CSV from blog posts.

The following fields are exported:

- title
- summary
- slug
- locale
- body
- published_on

## Installation

Add gem to your `Gemfile`

```ruby
gem "middleman-csv"
```

Activate it in your `config.rb`:

```ruby
activate :csv
```

After your website is built, you can access all your posts in CSV format at: `/posts.csv`

## License

Licensed under MIT

Copyright (c) 2023 Yuri Kovalov (https://www.yurikoval.com/)
