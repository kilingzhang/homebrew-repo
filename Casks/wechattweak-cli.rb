cask "wechattweak-cli" do
  version "1.0"
  sha256 "b86e45996ed9ecc5cf2812a5f9fc8599d59ab67b0e2bcc18b8afe27a1851bcaa"
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
