#CLI Controller
class TechJob::CLI

    def call
        puts "Fit Tech Job Postings:"
        list_postings
        menu
        goodbye
    end

    def list_postings
        puts "Fit Tech Job Postings:"
        puts <<-DOC #heredoc
          1. Senior Software Engineer (iOS)- New York, NY
          2. DevOps Engineer -New York, NY
        DOC
        @jobs =TechJob::Job.all 
        # @jobs.each.with.index(1) do |job, i|
        #     puts "#{i}. #{job} "
        #end
    end

    def menu
      input = nil
      while input != "exit"
        puts "Number of the job posting you'd like to view the qualifications for, or type list to see all postings again, or type exit"
        input = gets.strip.downcase
        if input.to_i > 0
            puts @jobs[input.to_i-1] 
        elsif input =="list"
            list_postings 

        # case input
        # when "1"
        #     puts "More info on job 1"
        # when "2" 
        #     puts "more info on job 2"
        # when "list" 
        #     list_postings 
        else
            "Type list or exit"
        end
       end
    end  

    def goodbye
        puts "Thanks check tomorrow for more job posts"
    end 
    

end