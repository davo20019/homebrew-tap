class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.7/aidaemon-macos-aarch64.tar.gz"
      sha256 "42f0875bce392f7e853b05ebffeb2c957011328c6dd8b1ffd1fbc3d6056d0dca"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.7/aidaemon-macos-x86_64.tar.gz"
      sha256 "a4608842910c82e551741c4d49c3ce6d2dc2cc21389a970dc1609c98b5317804"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.7/aidaemon-linux-x86_64.tar.gz"
    sha256 "7a5e3b204bd0e4c855378fa9455daa55178bc1120e8368b468cf29388c3bb085"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
