cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "18cf2239c1a2f5c13e3fb4f3acc7f1f5f3a2cc42aea36a1fe151a7a16af23516",
         intel: "e357c9cfe9544f11d5418bf5e4fa6ca46d181e64cba23262a4388ac384832dc7"

  url "https://github.com/adamtwo/klippal/releases/download/v#{version}/KlipPal-#{version}-#{arch}.dmg",
      verified: "github.com/adamtwo/klippal/"
  name "KlipPal"
  desc "Native macOS clipboard manager with local-only storage"
  homepage "https://github.com/adamtwo/klippal"

  depends_on macos: ">= :ventura"

  app "KlipPal.app"

  zap trash: [
        "~/Library/Application Support/KlipPal",
        "~/Library/Caches/com.klippal.KlipPal",
        "~/Library/Preferences/com.klippal.KlipPal.plist",
        "~/Library/Saved Application State/com.klippal.KlipPal.savedState",
      ]
end
