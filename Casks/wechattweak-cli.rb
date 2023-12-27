cask "wechattweak-cli" do
  version "1.5"
  sha256 "f47985dc4bf7156191c07a886137838924270ae30c2a2299574d8d4c9f21e27b"
  url "https://github.com/kilingzhang/WeChatTweak-CLI/releases/download/#{version}/wechattweak-cli"

  name "WeChatTweak-CLI"
  desc "A command line utility to work with WeChatTweak-macOS."
  homepage "https://tweaks.app"

  binary "wechattweak-cli"
  depends_on macos: ">= :sierra"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/wechattweak-cli"
  end
end
