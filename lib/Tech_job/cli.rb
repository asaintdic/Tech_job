#CLI Controller
class TechJob::CLI

    def call
        puts "Fit Tech Job Postings:"
        list_postings
        menu
        goodbye
    end

    def list_postings
        puts <<-DOC #heredoc
          1. Senior Software Engineer (iOS)- New York, NY
          2. DevOps Engineer -New York, NY
        DOC
    end

    def menu
      puts "Number of the job posting you'd like to view the qualifications for, or type list to see all postings again, or type exit"
      input = nil
      while input != "exit"
        input = gets.strip.downcase
        case input
        when "1"
            puts "More info on deal 1"
        when "2" 
            puts "more info on deal 2"
        end
       end
    end  

    def goodbye
        puts "Thanks check tomorrow for more job posts"
    end 
    

end