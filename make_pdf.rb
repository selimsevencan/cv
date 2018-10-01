require 'pdfkit'

kit = PDFKit.new(File.new('./_site/index.html'))
