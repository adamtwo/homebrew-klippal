cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "825acfd603dad8d4c245d1b7116a4cb81f2e2d0bdf5029440e2602d1f779afc1",
         intel: "759aa415b54a7c3bf587adef646c0cea500cdffe52d16ff5e305516e33bbbc7a"

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
