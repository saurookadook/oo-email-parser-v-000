require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@all = []

  def initialize(emails)
    @emails = emails
    # binding.pry
  end

  def parse
    parsed_emails = @emails.split(/\,|(\,\s)|\s/)
    parsed_emails.each do |array_element|
      @@all << array_element if (array_element != "" && !(@@all.include?(array_element)))
    end
  end

end
