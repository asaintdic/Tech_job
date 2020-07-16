class JobScrape 
    
    def self.scrape_all
        self.scrape_peloton
        self.scrape_peloton2
    end 

    def self.scrape_peloton
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/1199501"))
    
        title = doc.search("h1.app-title").text
        responsibilities = doc.search("#content > p:nth-child(3)").text  
        qualifications = doc.search("#content > ul:nth-child(5)").text
        Job.new(title, responsibilities, qualifications)
        
    end

    def self.scrape_peloton2
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/2235100"))
        
        title = doc.search("#header > h1").text
        responsibilities = doc.search("#content > ul:nth-child(3)").text  
        qualifications = doc.search("#content > ul:nth-child(5)").text
        Job.new(title, responsibilities, qualifications)
    end
 

end