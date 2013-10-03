namespace :data do
	task :scrape_gardens => :environment do
		#Pull the table of contents
		req = HTTParty.get('http://www.ilovegardens.com/Alabama%20Gardens.htm')
		raise unless req.success?

		doc = Nokogiri::HTML(req.body)

		pages = []
		
		doc.css("#leftsidebar a").each do |link|
			next if link['title'].blank? \

			pages << "http://www.ilovegardens.com/#{link['href']}"
			
		end

		#For each of the pages in the contents, parse data
		[pages.p[1]].each do |page|
			req = HTTParty.get(page)
			raise unless req.success?

			doc = Nokogiri::HTML(req.body)

			locations = []
			doc.css("#container .name").children.each do |element|
				if element['href'].present?
				puts element.content

				elsif element.css("name")
				end

			end

			puts locations.impact
		end
	end
end