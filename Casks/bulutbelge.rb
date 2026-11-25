cask "bulutbelge" do
  version "0.1.2"
  sha256 "fe9f5bac3d103f89ab8ea8866dab931720fe35cbd81e69b1bfe050b0e03cc9e4"

  url "https://github.com/bulutbelge/bulutbelge/releases/download/v#{version}/BulutBelge_#{version}_aarch64.dmg",
      verified: "github.com/bulutbelge/bulutbelge/"
  name "BulutBelge"
  desc "Offline personal data detection and redaction for documents"
  homepage "https://bulutbelge.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "BulutBelge.app"
  binary "#{appdir}/BulutBelge.app/Contents/Resources/engine/bulutbelge-engine", target: "bulutbelge"

  zap trash: [
    "~/Library/Application Support/com.proteksistem.bulutbelge",
    "~/Library/Caches/com.proteksistem.bulutbelge",
    "~/Library/WebKit/com.proteksistem.bulutbelge",
  ]
end
