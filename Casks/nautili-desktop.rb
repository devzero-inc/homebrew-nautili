# Written by each release (packages/script/src/homebrew-tap.ts); edits here are overwritten.
cask "nautili-desktop" do
  version "0.0.6"

  on_arm do
    url "https://releases.nautili.ai/stable/desktop/0.0.6/nautili-desktop-mac-arm64.dmg"
    sha256 "081e1ddcbed21f704cc5aca13439cff5ea653734f106c3a74feef7ecaaa24fdb"
  end
  on_intel do
    url "https://releases.nautili.ai/stable/desktop/0.0.6/nautili-desktop-mac-x64.dmg"
    sha256 "e86bd540c16f6ff56eacf45e672111a5358bb3736d83c0fe3c731d598ac020eb"
  end

  name "Nautili"
  desc "Nautili desktop app"
  homepage "https://www.nautili.ai"

  auto_updates true

  app "Nautili.app"
end
