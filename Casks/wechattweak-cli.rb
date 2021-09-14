cask "wechattweak-cli" do
  version "1.1"
  sha256 "4b686e3f75f40fcc60edfd7b504cac970f229cc623818bcf771642ac645422ce"
  url "https://github.com/Sunnyyoung/WeChatTweak-CLI/releases/download/#{version}/wechattweak-cli"

  name "WeChatTweak-CLI"
  desc "A command line utility to work with WeChatTweak-macOS."
  homepage "https://tweaks.app"

  binary "wechattweak-cli"
  depends_on macos: ">= :el_capitan"

  if MacOS.version < "10.14.4"
    depends_on cask: "sunnyyoung/repo/swift-runtime-support"
  end

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/wechattweak-cli"
  end
end
