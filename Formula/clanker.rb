class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/bgdnvk/clanker"

  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.7/clanker_v0.0.7_darwin_arm64.tar.gz"
      sha256 "472c1f355a71d4da0d44e177bf9fde0aab28ac91a0637726aad079a31b39cd05"
    else
      url "https://github.com/bgdnvk/clanker/releases/download/v0.0.7/clanker_v0.0.7_darwin_amd64.tar.gz"
      sha256 "dcf44d433f8253bb8fa87ad6efa82483c911f48f5e514932fc40421d18bd1784"
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
