module Fastlane
  module Helper
    class UpxHelper
      # class methods that you define here become available in your action
      # as `Helper::UpxHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the upx plugin helper!")
      end
    end
  end
end
