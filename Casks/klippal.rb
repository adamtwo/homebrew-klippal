cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0"
  sha256 arm:   "3040b83c635654ff54e76b249d182c33cfd20c79bedf1a5627e5daf0c879159d",
         intel: "cdde4cc93c475f6f5ae5a0c90795c2dd579e25207b340038dfa64b545c215664"

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
