cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.7"
  sha256 arm:   "f972f5cd1c88d14e501af5237556ce7b0c4bc52ad252ed582211230221db4551",
         intel: "df589d456f3ca519f31cf4cc15e6b1078b19122a62f129d7982b40ecf05cdaaa"

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
