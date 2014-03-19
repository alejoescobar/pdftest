PDFKit.configure do |config|
PDFKit.configure do |config|
  config.default_options = { page_size: 'A4', print_media_type: true }
  if RUBY_PLATFORM =~ /linux/
    wkhtmltopdf_executable = Rails.root.join('vendor', 'wkhtmltopdf-amd64').to_s
  elsif RUBY_PLATFORM =~ /darwin/
    # wkhtmltopdf_executable = '/Users/alejandro/Projects/pdftest/pdftest/bin/wkhtmltopdf'
    wkhtmltopdf_executable = Rails.root.join('vendor', 'wkhtmltopdf').to_s
  else
    raise "Unsupported. Must be running linux or intel-based Mac OS."
  end
  # config.wkhtmltopdf = Rails.root.join('vendor', 'wkhtmltopdf-amd64').to_s
  config.wkhtmltopdf = wkhtmltopdf_executable
end
config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
end