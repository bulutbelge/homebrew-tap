cask "bulutbelge" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "8baa89cb85b0bd4d820aee02a5b44a1ac6d7a8f8c516bd4372a95a69c16d00cd",
         intel: "5be78d89a13119ca03afc13ac49ca5133353259e76e472a5c8a4052480da657b"

  url "https://github.com/bulutbelge/bulutbelge/releases/download/v#{version}/BulutBelge_#{version}_#{arch}.dmg"
  name "BulutBelge"
  desc "Offline personal data detection and redaction for documents"
  homepage "https://bulutbelge.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_intel do
    depends_on macos: :ventura
  end

  app "BulutBelge.app"
  binary "#{appdir}/BulutBelge.app/Contents/Resources/engine/bulutbelge-engine", target: "bulutbelge"

  zap trash: [
    "~/Library/Application Support/com.proteksistem.bulutbelge",
    "~/Library/Caches/com.proteksistem.bulutbelge",
    "~/Library/WebKit/com.proteksistem.bulutbelge",
  ]
end
