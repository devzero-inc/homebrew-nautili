# Written by each release (packages/script/src/homebrew-tap.ts); edits here are overwritten.
cask "nautili-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "78e7b232c097112989eb6b07dbab9f1afbee6f9fba3069ad4716cd36a5e46819",
         intel: "760a8aca56b7db506d3e9f15c6d3cdcc38ec797aecff58a659e5763fca7e1b4e"

  url "https://releases.nautili.ai/stable/desktop/#{version}/nautili-desktop-mac-#{arch}.dmg"
  name "Nautili"
  desc "Desktop app for Nautili"
  homepage "https://www.nautili.ai/"

  auto_updates true
  depends_on :macos

  app "Nautili.app"
end
