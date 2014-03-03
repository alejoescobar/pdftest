PDFKit.configure do |config|
PDFKit.configure do |config|
  config.default_options = { page_size: 'A4', print_media_type: true }
  if RUBY_PLATFORM =~ /linux/
    wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
  elsif RUBY_PLATFORM =~ /darwin/
    wkhtmltopdf_executable = '/Users/alejandro/.rvm/gems/ruby-1.9.3-p484/bin/wkhtmltopdf'
  else
    raise "Unsupported. Must be running linux or intel-based Mac OS."
  end
  config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s
end
config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
end