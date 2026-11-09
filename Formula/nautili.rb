# typed: false
# frozen_string_literal: true

# Written by each release (packages/script/src/homebrew-tap.ts); edits here are overwritten.
class Nautili < Formula
  desc "Terminal client for Nautili (nt)"
  homepage "https://www.nautili.ai/"
  version "0.0.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.nautili.ai/stable/cli/0.0.7/nt-darwin-arm64.zip"
      sha256 "df6f0a8adbbe3e6873f5fc098466ec135042fb3c9e241bc013472bcc742148ad"
    else
      url "https://releases.nautili.ai/stable/cli/0.0.7/nt-darwin-x64-baseline.zip"
      sha256 "d849ff4b3432e690a122cecd47d61bca3af641d67803170008fae706cb5af018"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.nautili.ai/stable/cli/0.0.7/nt-linux-arm64.tar.gz"
      sha256 "66d35343b85179bb9c63cad224b88b44a1dd0c78fac39b106eea677c68b12839"
    else
      url "https://releases.nautili.ai/stable/cli/0.0.7/nt-linux-x64-baseline.tar.gz"
      sha256 "6acc393a4061ba1d0e722fe5029ed35403a106deaaa454f479bdecde06a94d67"
    end
  end

  def install
    bin.install "nt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nt --version")
  end
end
