require "spec_helper"
require "faraday"
require "nokogiri"


class ZillowApi
  attr_accessor :query

  def initialize (query)
    @query = query
    # @zwsid = 'X1-ZWz18g89h9qk23_7rj5m'
    # @url = 'https://www.zillow.com/webservice/GetSearchResults.htm'
    # @query1 = "?zws-id="
    # @query2 = "&citystatezip=92870&address=965%20Eastwind,%20Placentia,%20ca"
  end

  def status_200
    conn = Faraday.new(:url => @url)
    response = conn.get @query1+@zwsid+@query2
    return response.status
  end

  def search_results
    conn = Faraday.new(:url => @url)
    response = conn.get @query1+@zwsid+@query2
    response.body

    f=response.body
    doc=Nokogiri::XML(f)
    return address = doc.xpath('//address/street').text, citystateZip = doc.xpath('//citystatezip').text
  end
end


# class Student
#   attr_accessor :name, :major, :gpa

#   def initialize(name, major, gpa)
#     @name = name
#     @major = major
#     @gpa = gpa
#   end

#   def has_honors
#     if @gpa > 3.5
#       return true
#     else
#       return false
#     end
#   end
# end

# student1 = Student.new("him", "bus", 4.0)
# puts student1.gpa

# student2 = Student.new("tom", "math", 2.0)
# puts student2.name

# puts student1.has_honors

# puts student2.has_honors