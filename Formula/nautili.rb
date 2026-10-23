# typed: false
# frozen_string_literal: true

# Written by each release (packages/script/src/homebrew-tap.ts); edits here are overwritten.
class Nautili < Formula
  desc "Terminal client for Nautili (nt)"
  homepage "https://www.nautili.ai/"
  version "0.0.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.nautili.ai/stable/cli/0.0.6/nt-darwin-arm64.zip"
      sha256 "7f8bb8b769450ce126f2db13cbf3c3a1823a4d7cd3fa5dc06eb6fc8c9bcaf7b9"
    else
      url "https://releases.nautili.ai/stable/cli/0.0.6/nt-darwin-x64-baseline.zip"
      sha256 "ffd4aa2d8a52b9078a11959cc5d4129e9cf58e1160eb0069e3b079b5dd78fe40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.nautili.ai/stable/cli/0.0.6/nt-linux-arm64.tar.gz"
      sha256 "59be7495c2db3a6613d301a73bb18c992ebfe5a58e039f3e623c43083a7df22e"
    else
      url "https://releases.nautili.ai/stable/cli/0.0.6/nt-linux-x64-baseline.tar.gz"
      sha256 "a7acf3f91b71c12d676e0ba5b4abd4afba66b06719ab4a7859a3e4f87e8fc30a"
    end
  end

  def install
    bin.install "nt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nt --version")
  end
end
