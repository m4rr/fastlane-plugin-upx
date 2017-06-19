describe Fastlane::Actions::UpxAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The upx plugin is working!")

      Fastlane::Actions::UpxAction.run(nil)
    end
  end
end
