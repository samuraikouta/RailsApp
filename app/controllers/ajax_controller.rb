class AjaxController < ApplicationController
	layout 'ajax'
	
	def index
  end
  
  def data
    url = URI('http://queryfeed.net/twitter?q=%E5%A4%AA%E7%94%B0%E5%85%89&title-type=user-name-both&geocode=')
    http = Net::HTTP.new(url.host)
    response = http.get(url)

    @data = Hash.from_xml(response.body).to_json.html_safe
  end
end
