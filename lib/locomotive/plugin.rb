
module Locomotive
  module Plugin

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def before_filter(meth)
        @@before_filters ||= []
        @@before_filters << meth
      end

      def before_filters
        @@before_filters
      end
    end

    def before_filters
      self.class.before_filters
    end

  end
end
