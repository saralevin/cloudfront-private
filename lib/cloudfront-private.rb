require "cloudfront-private/version"
require 'cloudfront-private/base'
require 'cloudfront-private/configuration'
require 'active_support/concern'

module Cloudfront
  module Private
		class << self
	    attr_accessor :root, :base_path
	
	    def configure(&block)
	      Cloudfront::Private::Base.configure(&block)
	    end
	    
	    def get_url(_request,_resource,expire = 1.hour.from_now.to_i)
	    	Cloudfront::Private::Base.get_url(_request, _resource,expire)
	    end
	  end
	  
	  autoload :Base, 'cloudfront-private/base'
	  autoload :Configuration, 'cloudfront-private/configuration'
	  
	  module Streaming
	  	autoload :Base, 'cloudfront-private/streaming/base'
	  end
  end
end
