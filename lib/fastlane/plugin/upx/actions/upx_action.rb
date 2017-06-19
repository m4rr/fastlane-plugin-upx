module Fastlane
  module Actions
    class UpxAction < Action
      def self.run(params)
        UI.message("The upx plugin is working!")
      end

      def self.description
        "the Ultimate Packer for eXecutables"
      end

      def self.authors
        ["Marat Saytakov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "UPX is a free, portable, extendable, high-performance executable packer for several executable formats"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "UPX_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
