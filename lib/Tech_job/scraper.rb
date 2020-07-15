class JobScrape
    attr_accessor :title, :responsibilities, :qualifications

     @@all =[]
    def self.postings
        self.scrape_all
    end 
      
    def self.scrape_all
        @@all << self.scrape_peloton
        @@all << self.scrape_peloton2
    end 
    
    def self.all
        @@all
    end

    def self.scrape_peloton
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/1199501"))
        
        job = self.new
        job.title = doc.search("h1.app-title").text
        job.responsibilities = doc.search("#content > p:nth-child(3)").text  
        job.qualifications = doc.search("#content > ul:nth-child(5)").text
        job
        
    end

    def self.scrape_peloton2
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/2235100"))
        
        job = self.new
        job.title = doc.search("#header > h1").text
        job.responsibilities = doc.search("#content > ul:nth-child(3)").text  
        job.qualifications = doc.search("#content > ul:nth-child(5)").text
        job
    end
 

end