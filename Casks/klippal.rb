cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.6"
  sha256 arm:   "2a582b685c8dc9a4913f0832b859a1d3300a8697cae68e633366c6ce82bdb7f7",
         intel: "cbd952cb2b42079e56d6f841dde2f946023ba3100d0883a50467da8e4292963c"

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
