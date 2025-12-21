cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "17ff0717d31af3b9f3bf1a89811c29fcc5912313834a5a3a5fc91f8a3d0bcc9f",
         intel: "2b17bad760643f2c081575f60c54714ad1affafff48efe044cfd076e88e99a1f"

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
