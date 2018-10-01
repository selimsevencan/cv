require 'pdfkit'

kit = PDFKit.new(File.new('./_site/index.html'), :page_size => 'Letter')
kit.to_file('./_site/cv.pdf')

