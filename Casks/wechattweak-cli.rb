cask "wechattweak-cli" do
  version "1.2"
  sha256 "c5b1eccc208a380b62ff67cf4df976614d3c39322f79b9c3c3155cc9b3e4ae69"
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
