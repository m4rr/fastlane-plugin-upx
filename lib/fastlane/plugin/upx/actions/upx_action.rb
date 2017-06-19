module Fastlane
  module Actions
    class UpxAction < Action
      def self.run(params)
        require 'shellwords'

        UI.message("The upx plugin is working!")
        project_name = Dir["*.xcodeproj"].first.split(".").first
        UI.message(project_name)

        cmd = []
        cmd << "upx"
        cmd << project_name

        # %x( upx ../`project_name` )
        # Actions.sh(Shellwords.join(cmd))
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
        "UPX is a free, portable, extendable, high-performance executable packer for several executable formats. This plugin runs `upx` on your executable."
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
        [:mac].include?(platform)
      end
    end
  end
end
