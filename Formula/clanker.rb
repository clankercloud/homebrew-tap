class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/bgdnvk/clanker"

  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.2/clanker_v0.0.2_darwin_arm64.tar.gz"
      sha256 "da25a85c372f62657b037303ed76d17ee48d75e4a559802177512d33b277aab2"
    else
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.2/clanker_v0.0.2_darwin_amd64.tar.gz"
      sha256 "bcf2700119688223a485c1e294ae995b5f842b66af7916f7bd948b8db186df57"
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
