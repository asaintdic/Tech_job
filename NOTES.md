Building My CLI Gem

!) Plan gem, think about the interface (flow chart)
2) Start with Project Structure
3) Entry point- the file run from user end
4) Force it to build the CLI interface
5) stub out the interface
6) Make things real
7) discover objects
8) program


-- Command line interface for peloton tech jobs

User types Tech_jobs

Show a list of jobs

Senior Software Engineer (iOS)- New York, NY
DevOps Engineer -New York, NY

Which job would you like to know more about

What is a job posting?

It has a job title and company
it has a job description
it has qualifications and requirements

title = doc.search("h1.app-title").text

responsibilities = doc.search("#content > p:nth-child(3)").text  #content > p:nth-child(3)

qualifications = doc.search("#content > ul:nth-child(5)").text #content > ul:nth-child(5)


@name = ""
    def initialize
       puts "please enter your name"
       @name = gets.strip
       puts "Welcome #{@name} to FITTech Job Qual Finder!"
       welcome_user
    end
    def welcome_user
       puts "Are you ready to look over job postings? yes/no"
       response = gets.strip
     if response == "yes"
        puts "Great! I hope viewing these posts, really help with your resume update #{@name}!"
        view_recipe_list
     elsif response == "no"
        puts "Hopefully you'll try another time #{$name}!"
     else
        puts "Oops thats not a valid response please answer yes or no"
        welcome_user
     end
    end

        # def call
    #     puts "Fit Tech Job Postings:"
    #     list_postings
    #     menu
    #     goodbye
    # end

    # puts "Fit Tech Job Postings:"
        # puts <<-DOC #heredoc
        #   1. Senior Software Engineer (iOS)- New York, NY
        #   2. DevOps Engineer -New York, NY
        # DOC

       * Separation of Concerns *
        3 classes
        CLI Class
        Jobs Class
        Add a scraper class that handles the scraping(scraper)
        
        Middle man responsible for scraping
        scrape, create instances, store in the @@jobs variable, when dealing with data


        "https://boards.greenhouse.io/peloton/jobs/2218971"

def list_postings
      # @jobs = Job.postings #define variables in smallest scope possible
      # Job.scrape_all #job not responsible for scraping all, create a scraping class
      Job.all.each.with_index(1) do |job, i| 
        puts "#{i}. #{job.title} "
      end 
    end