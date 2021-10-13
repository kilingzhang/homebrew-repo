cask "applereserver" do
  version "5.2"
  sha256 "d5947f294b25efbf45b526900b55094cb1c8334b162e39c2c3a992a6c4b826fc"
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
