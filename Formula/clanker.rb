class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/bgdnvk/clanker"

  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.2/clanker_v0.0.2_darwin_arm64.tar.gz"
      sha256 "72191f65af86911cb7993fe3673295c02ac440302731e7426df1c60b980d9c40"
    else
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.2/clanker_v0.0.2_darwin_amd64.tar.gz"
      sha256 "a2fcf46169f2ea1a9b5c0bf3fe584fcb1cddf9ee67a95ddcfe65d21d03bd7647"
    end
  end

  on_linux do
    odie "Clanker is currently only available for macOS."
  end

  def install
    bin.install "clanker"
  end

  test do
    system "#{bin}/clanker", "--help"
  end
end
