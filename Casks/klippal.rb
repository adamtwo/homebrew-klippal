cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.9"
  sha256 arm:   "b25ee7c65f6242fb03bdf66a6f24e28f9804d57c08929c9917106ea1a08fed06",
         intel: "e2930b259e9fb629e751308108bbe21fad8195f246d0c7f88e9257f2e85007de"

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
