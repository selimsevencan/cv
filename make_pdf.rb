require 'pdfkit'

puts "Generating PDF..."
kit = PDFKit.new(File.new('./_site/index.html'), :page_size => 'Letter')
kit.to_file('./_site/cv.pdf')
puts "Generated PDF is here: #{file.path}"
