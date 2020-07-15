class Job 
  attr_accessor :title, :responsibilities, :qualifications 
 
   @@all = []
    def initialize(title:, responsibilities:, qualifications:)
      @title = title
      @responsibilities = responsibilities
      @qualifications = qualifications
    end 
     
   def self.all
        @@all
   end
  
end 