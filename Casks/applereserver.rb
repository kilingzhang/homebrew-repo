cask "applereserver" do
  version "5.1"
  sha256 "2de3863506ca3001b14749a1af1177c7057ab4c66f492797ee9c6bb0d2f52f3c"
  url "https://github.com/Sunnyyoung/AppleReserver/releases/download/#{version}/applereserver"

  name "AppleReserver"
  desc "Apple 官方预约命令行监控助手"
  homepage "https://github.com/Sunnyyoung/AppleReserver"

  binary "applereserver"
  depends_on macos: ">= :el_capitan"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/applereserver"
  end
end
