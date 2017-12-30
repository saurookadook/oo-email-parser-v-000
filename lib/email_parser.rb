require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @all = []
  end

  def parse
    parsed_emails = @emails.split(/\,|\s/)
    parsed_emails.uniq.each do |array_element|
      # binding.pry
      if (array_element != "" && !(@all.include?(array_element)))
        @all << array_element
      end
    end
    @all
  end

end
