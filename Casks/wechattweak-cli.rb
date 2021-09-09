cask "wechattweak-cli" do
  version "1.0"
  sha256 "bdc4eb74a56ffa4332f06d8fbea5eaec5d14a5f169dae3c29d64ea36ec3b3c9b"
  url "https://github.com/Sunnyyoung/WeChatTweak-CLI/releases/download/#{version}/wechattweak-cli"

  name "WeChatTweak-CLI"
  desc "A command line utility to work with WeChatTweak-macOS."
  homepage "https://tweaks.app"

  binary "wechattweak-cli"
  depends_on macos: ">= :el_capitan"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/wechattweak-cli"
  end
end
