cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "fb51223e961b7b1f508a7878be00ccd1d25d7f07574fb5e9c6169d0ce59fb75a",
         intel: "cee746506fb0cc90fef574593e804514e18ffa72140f7f2474775258378bf358"

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
