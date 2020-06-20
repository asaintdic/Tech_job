#CLI Controller
class TechJob::CLI

    @name = ""
    def call
       puts "Please enter your name"
       @name = gets.strip
       puts "Welcome #{@name}, to FITTech Job Qual Finder!"
       welcome_user
       menu
    end
    def welcome_user
       puts "Are you ready to look over job postings? yes/no"
       response = gets.strip
     if response == "yes"
        puts "Great! I hope viewing these posts, really help with your resume update, #{@name}!"
        list_postings
     elsif response == "no"
        puts "Hopefully you'll try another time #{$name}!"
        goodbye
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

    def list_postings
        # puts "Fit Tech Job Postings:"
        # puts <<-DOC #heredoc
        #   1. Senior Software Engineer (iOS)- New York, NY
        #   2. DevOps Engineer -New York, NY
        # DOC
          @jobs =TechJob::Job.postings 
          @jobs.each.with_index(1) do |job, i|
              puts "#{i}. #{job.title} "
          end 
        #@jobs = TechJob::Job.postings 
        #end
    end

    def menu
      input = nil
      while input != "exit"
        puts "Number of the job posting you'd like to view the qualifications for, or type list to see all postings again, or type exit"
        input = gets.strip.downcase
        if input.to_i > 0
            # @jobs =TechJob::Job.postings 
            # @jobs.each.with_index(1) do |job, i| i == input.to_i-1
            #     puts "#{i} . #{job.title}\n\n RESPONSIBILITIES\n\n #{job.responsibilities}\n\n QUALIFICATIONS\n\n #{job.qualifications}" 
            # end
        # elsif  
        #     @jobs.each.with_index(1) do |job, i| 
        #         puts "#{i}. #{job.title}\n\n RESPONSIBILITIES\n\n #{job.responsibilities}\n\n QUALIFICATIONS\n\n #{job.qualifications} "
        #  end
          new_jobs = @jobs[input.to_i-1] 
          puts "#{new_jobs.title}\n\n RESPONSIBILITIES\n\n #{new_jobs.responsibilities}\n\n QUALIFICATIONS\n\n #{new_jobs.qualifications} "
        elsif input == "list"
            list_postings 

        # case input
        # when "1"
        #     puts "More info on job 1"
        # when "2" 
        #     puts "more info on job 2"
        # when "list" 
        #     list_postings 
        else
         puts "Type list or exit"
        end
      end
    end  

    def goodbye
        puts "Thanks check tomorrow for more job posts"
    end 
    
end