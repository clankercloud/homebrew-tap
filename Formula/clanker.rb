class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/bgdnvk/clanker"

  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.8/clanker_v0.0.8_darwin_arm64.tar.gz"
      sha256 "ef30c4195c800f2535762c8d00535ad95a8a566d78ceccf4b09c732841207cdd"
    else
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.8/clanker_v0.0.8_darwin_amd64.tar.gz"
      sha256 "26b06617d0277f8208313b3c5ea649eb723ec6ecf54c8fc65b54cc186068c5ea"
    end
  end

  on_linux do
    disable! date: "2026-05-24", because: "Clanker is currently only available for macOS"
  end

  def install
    bin.install "clanker"
  end

  test do
    system bin/"clanker", "--help"
  end
end
