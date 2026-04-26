cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.8"
  sha256 arm:   "fa0539a69c1bb952f25dd8ffdd28bc211fc036d6e1a251ef8baa6b5ee611c74f",
         intel: "b943ff6663cb30f84d6dba45bb77d10bf2d16c32e6f0cfb45da6a72e1f73ff7d"

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
