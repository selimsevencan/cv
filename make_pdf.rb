require 'pdfkit'

PDFKit.configure do |config|
	config.default_options = {
		:debug_javascript => true,
		:javascript_delay => "3000"
	}
	config.verbose = true
end

puts "Generating PDF..."
kit = PDFKit.new(File.new('./_site/index.html'), :page_size => 'Letter')
file = kit.to_file('./_site/cv.pdf')
puts "Generated PDF is here: #{file.path}"
