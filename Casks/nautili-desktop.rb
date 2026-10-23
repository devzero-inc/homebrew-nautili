# Written by each release (packages/script/src/homebrew-tap.ts); edits here are overwritten.
cask "nautili-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "081e1ddcbed21f704cc5aca13439cff5ea653734f106c3a74feef7ecaaa24fdb",
         intel: "e86bd540c16f6ff56eacf45e672111a5358bb3736d83c0fe3c731d598ac020eb"

  url "https://releases.nautili.ai/stable/desktop/#{version}/nautili-desktop-mac-#{arch}.dmg"
  name "Nautili"
  desc "Desktop app for Nautili"
  homepage "https://www.nautili.ai/"

  auto_updates true
  depends_on :macos

  app "Nautili.app"
end
