require 'pipeline/finding'
require 'pipeline/reporters/base_reporter'

require 'json'

class Pipeline::JSONReporter < Pipeline::BaseReporter

  Pipeline::Reporters.add self

  attr_accessor :name, :format
 
  def initialize()
    @name = "JSONReporter"    
    @format = :json
  end

  def run_report(tracker)
    tracker.findings.each do |finding|
    	puts finding.to_json
   	end
  end

end
