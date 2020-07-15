class CLI

    
    def call
      puts "Please enter your name"
       @name = gets.strip
      puts "\n\nWelcome #{@name}, to FITTech Job Qual Finder!\n"
      JobScrape.scrape_all 
      welcome_user
      menu
    end
    
    def welcome_user
       puts "Are you ready to look over job postings? y/n\n\n"
       response = gets.strip
     if response == "y"
        puts "Great! I hope viewing these posts, really help with your resume update, #{@name}!\n\n"
        list_postings
     elsif response == "n"
        puts "Hopefully you'll try another time #{@name}!"
        goodbye
     else
        puts "Please answer y or n"
        welcome_user
     end
    end
    
    def list_postings
      JobScrape.all.each.with_index(1) do |job, i| 
        puts "#{i}. #{job.title} "
      end 
    end

   
    def menu
      input = nil
      while input != "exit"
        puts "Number of the job posting you'd like to view the qualifications for, or type list to see all postings again, or type exit"
        input = gets.strip.downcase
        if input.to_i > 0
         new_jobs = JobScrape.postings[input.to_i-1] 
          puts "#{new_jobs.title}\n\n RESPONSIBILITIES\n\n #{new_jobs.responsibilities}\n\n QUALIFICATIONS\n\n #{new_jobs.qualifications} "
        elsif input == "list"
          list_postings 
        elsif input == "exit"
          exit!
        else
         puts "Type list or exit"
        end
      end
    end  

    def goodbye
        puts "Thanks check tomorrow for more job posts"
        exit!
    end 
    
end