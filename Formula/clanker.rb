class Clanker < Formula
  desc "AI-powered terminal for Cloud queries"
  homepage "https://github.com/clankercloud/clanker-cli"

  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clankercloud/clanker-cli/releases/download/v0.0.9/clanker_v0.0.9_darwin_arm64.tar.gz"
      sha256 "74054df2cd5a6d3b35ae1d147b953c8960f10cb8055bc24af5261a7f10b708cb"
    else
      url "https://github.com/clankercloud/clanker-cli/releases/download/v0.0.9/clanker_v0.0.9_darwin_amd64.tar.gz"
      sha256 "40825bb2d839495af9379a7e0f796a3f951ad5902a5a4006098d055fce5fc47c"
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
