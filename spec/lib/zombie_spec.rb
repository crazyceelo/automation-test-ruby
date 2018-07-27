require "spec_helper"
require "zombie"
require "faraday"

describe Zombie do
  it 'is named Ash' do 
    zombie = Zombie.new
    expect(zombie.name).to eq("Ash")
  end

  it 'has no brains' do
    zombie = Zombie.new
    expect(zombie.brains).to eq(0)
  end
end

describe "api" do
  it 'returns a status of 200' do
    zwsid = "zws-id=X1-ZWz18g89h9qk23_7rj5m"

    conn = Faraday.new(:url => "https://www.zillow.com/webservice/GetSearchResults.htm")
    response = conn.get "?"+zwsid+"&citystatezip=92870&address=965%20Eastwind,%20Placentia,%20ca"

    expect(response.status).to eq(200)
  end

  xit 'returns citystatezip' do
    zwsid = "zws-id=X1-ZWz18g89h9qk23_7rj5m"

    conn = Faraday.new(:url => "https://www.zillow.com/webservice/GetSearchResults.htm")
    response = conn.get "?"+zwsid+"&citystatezip=92870&address=965%20Eastwind,%20Placentia,%20ca"

    expect(response.body).to eq(92870)
  end
end