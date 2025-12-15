cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.0"
  sha256 arm:   "7299da4152dfba2d318c60bce4f0278735e4f05bd4c97510b3f742e1bd44b57c",
         intel: "e6e7e6dcfa35440b9ac110970560401e035d2d312567f7a3cca162ecfa69e504"

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
