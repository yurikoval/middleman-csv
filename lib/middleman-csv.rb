require "middleman-core"

Middleman::Extensions.register :csv do
  require "middleman-csv/extension"
  CsvGenerator
end
