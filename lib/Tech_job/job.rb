class TechJob::Job 
  attr_accessor :title, :responsibilities, :qualifications # :url

#   @@jobs = []
     def self.postings
        self.scrape_jobs
        
     end 
      
      def self.scrape_jobs 
       jobs = []
  
       jobs << self.scrape_peloton
       jobs << self.scrape_peloton2
     end

    def self.scrape_peloton
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/2218971"))
        
        job = self.new
        job.title = doc.search("h1.app-title").text
        job.responsibilities = doc.search("#content > p:nth-child(3)").text  
        job.qualifications = doc.search("#content > ul:nth-child(5)").text
        job
        # binding.pry
    end

    def self.scrape_peloton2
        doc = Nokogiri::HTML(open("https://boards.greenhouse.io/peloton/jobs/1560822"))
        
        job = self.new
        job.title = doc.search("#header > h1").text
        job.responsibilities = doc.search("#content > ul:nth-child(3)").text  
        job.qualifications = doc.search("#content > ul:nth-child(5)").text
        job
        # binding.pry
    end
end 