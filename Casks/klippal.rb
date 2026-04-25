cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.3"
  sha256 arm:   "d382e839140836baf08228eac6706e295b974ade16ed0f5cc2726727a3d72426",
         intel: "10f66893edaeb661c579e8bd8a2d60b23f40a69030b24f16199cba4c55e2a254"

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
