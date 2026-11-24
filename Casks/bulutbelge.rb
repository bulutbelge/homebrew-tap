cask "bulutbelge" do
  version "0.1.1"
  sha256 "c3597af7eb127fc7ade33da5ac08f1799d55effc1966fa6992a8b04a279534f8"

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
