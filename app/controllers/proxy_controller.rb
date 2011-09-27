require 'uri'
require 'net/http'
class ProxyController < ApplicationController
  def proxy
  render :layout => false
  url = params[:url] 
  $out = Net::HTTP.get_response(URI.parse(url)).body
  end

end
