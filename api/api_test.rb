require 'faraday'
require 'json'
require 'faraday_middleware'
require 'nokogiri'


zwsid = "zws-id=X1-ZWz18g89h9qk23_7rj5m"

conn = Faraday.new(:url => "https://www.zillow.com/webservice/GetSearchResults.htm")
response = conn.get "?"+zwsid+"&citystatezip=92870&address=965%20Eastwind,%20Placentia,%20ca"

# puts response.status # 200
# puts response.body #xml?  but why?

f=response.body
doc=Nokogiri::XML(f)
address = doc.xpath('//address/street').text
citystateZip = doc.xpath('//citystatezip').text

puts address
puts citystateZip

#best version but doesn't work yet
# conn = Faraday.new(:url => "https://www.zillow.com/webservice/GetSearchResults")

# conn.get do |req|
#   req.url '.htm', :zws-id => "zws-id=X1-ZWz18g89h9qk23_7rj5m"
#   req.params['citystatezip'] = '92870'
#   req.params['address'] = '965%20Eastwind,%20Placentia,%20ca'
# end


#basic version but it works
# res = Faraday.get 'https://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz18g89h9qk23_7rj5m&citystatezip=92870&address=965%20Eastwind,%20Placentia,%20ca'

# puts res.status # 200
# puts res.success? # true/false

# puts res.body #xml?  but why?