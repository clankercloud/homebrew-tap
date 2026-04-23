class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/bgdnvk/clanker"

  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.6/clanker_v0.0.6_darwin_arm64.tar.gz"
      sha256 "7e9926ea68b68fb0a8b550e6165cdfffc37835c3f986b168f0b9f52ce2c0e82c"
    else
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.6/clanker_v0.0.6_darwin_amd64.tar.gz"
      sha256 "afd2af7977dfb29adeaa40cc4a79add2794772ad455d6aca228d17205c639f3d"
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
