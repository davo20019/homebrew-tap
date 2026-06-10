class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.2/aidaemon-macos-aarch64.tar.gz"
      sha256 "192e9f1479bd5c3d42c4291d487b27493a8e9501843b78edb72ad4bee1814878"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.2/aidaemon-macos-x86_64.tar.gz"
      sha256 "813c58dcb6bbaef2c605fc20bcb1bc55e792133e0420eb3898088de6a84f98a0"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.2/aidaemon-linux-x86_64.tar.gz"
    sha256 "55975482302ff3d385649cd5cb16a51ca9e7c5c0b73634caab629d14f03076e6"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
