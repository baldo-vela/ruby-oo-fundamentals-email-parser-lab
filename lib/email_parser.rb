# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# # or whitespace (' ').
# Instructions
# This lab is test-driven, so run the test suite to get started and use the test output to get the program working.

# Hints:

# How will you control for parsing a list of email addresses that is either comma separated or separated by a white space?
# Use an attr_accessor to set and get the list of email addresses

class EmailAddressParser
   
    attr_accessor :email
   
    def initialize(emails)
        @email = emails
    end

    def parse
        email_array = @email.split(/[, ]/).uniq
        email_array.reject! {|element| element.empty?}
        return email_array
    end
end