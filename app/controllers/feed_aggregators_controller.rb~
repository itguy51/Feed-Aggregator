require 'feed-normalizer'
require 'open-uri'
require 'chronic'

class Integer
   def to_str
     self.to_s
   end
end


class FeedAggregatorsController < ApplicationController
  # GET /feed_aggregators
  # GET /feed_aggregators.json
  def index
    @feed_aggregators = FeedAggregator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @feed_aggregators }
    end
  end

  # GET /feed_aggregators/1
  # GET /feed_aggregators/1.json
  def show
    @feed_aggregator = FeedAggregator.find(params[:id])


feeds = @feed_aggregator.feeds.split("\n")
totalout = ''
loop = 1
feeds.each do |feedurl|
uri = URI.parse(feedurl.strip)
inituri = feedurl
	if uri.scheme == "https"
	#If this doesn't work, Comment out this line, and uncomment the one below it.
	feedurl = "http://dakamotech.net/https.php?url=" + feedurl
	#feedurl = "http://localhost:3000/proxy/proxy?url=" + feedurl
	end
puts "Getting Feed " + loop + " Of " + feeds.length + "..."
feed = FeedNormalizer::FeedNormalizer.parse open(feedurl.strip)
feed.clean!
puts "Feed " + loop + " - " + feed.title.sub("Posts of ", "")
title = '<span style="font-size:16px;">' + feed.title.sub("Posts of ", "") + '</span><br />'
totalout = totalout + title + feed.entries.first.content + "<hr />"
date = nil
tryone = Date.parse(feed.entries.first.title)
if !tryone
trytwo = Chronic.parse(feed.entries.first.title)
date = Date.parse trytwo
else
date = tryone
end
datenow = Date.parse Time.now.strftime("%Y-%m-%d")
if datenow == date
else
puts "TBA - Ahead Posts"
end
loop += 1
end
$feedhtml = totalout





    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @feed_aggregator }
      format.pdf { 
      kit = PDFKit.new($feedhtml, :page_size => 'Letter')
      output = kit.to_pdf
      render :text => output}
    end
  end

  # GET /feed_aggregators/new
  # GET /feed_aggregators/new.json
  def new
    @feed_aggregator = FeedAggregator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @feed_aggregator }
    end
  end

  # GET /feed_aggregators/1/edit
  def edit
    @feed_aggregator = FeedAggregator.find(params[:id])
  end

  # POST /feed_aggregators
  # POST /feed_aggregators.json
  def create
    @feed_aggregator = FeedAggregator.new(params[:feed_aggregator])

    respond_to do |format|
      if @feed_aggregator.save
        format.html { redirect_to @feed_aggregator, :notice => 'Feed aggregator was successfully created.' }
        format.json { render :json => @feed_aggregator, :status => :created, :location => @feed_aggregator }
      else
        format.html { render :action => "new" }
        format.json { render :json => @feed_aggregator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feed_aggregators/1
  # PUT /feed_aggregators/1.json
  def update
    @feed_aggregator = FeedAggregator.find(params[:id])

    respond_to do |format|
      if @feed_aggregator.update_attributes(params[:feed_aggregator])
        format.html { redirect_to @feed_aggregator, :notice => 'Feed aggregator was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @feed_aggregator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_aggregators/1
  # DELETE /feed_aggregators/1.json
  def destroy
    @feed_aggregator = FeedAggregator.find(params[:id])
    @feed_aggregator.destroy

    respond_to do |format|
      format.html { redirect_to feed_aggregators_url }
      format.json { head :ok }
    end
  end
end
