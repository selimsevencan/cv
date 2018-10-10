module Jekyll
	class EnvironmentVariablesGenerator < Generator
		safe true

		def generate(site)
			shouldInjectCvDownloadLink = ENV['INJECT_CV_DOWNLOAD_LINK'] || 'YES'
			warn "shouldInjectCvDownloadLink: " + shouldInjectCvDownloadLink
			site.config['shouldInjectCvDownloadLink'] = shouldInjectCvDownloadLink 		
		end
	end
end
