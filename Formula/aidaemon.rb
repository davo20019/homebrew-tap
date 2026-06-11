class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.3/aidaemon-macos-aarch64.tar.gz"
      sha256 "0008c8e3761b73c22b56162215a28a37f2f3c7cccfe2d6dbf3e7a22552d6b5d7"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.3/aidaemon-macos-x86_64.tar.gz"
      sha256 "cdf0e0495ed48cfefedaef708b8bb1497eb3c1183a7485eef84c8ca64404af52"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.3/aidaemon-linux-x86_64.tar.gz"
    sha256 "f7ea0318be82673df67cbaf1001d0dadbaa140b4bb23e04139807b2cdc0b3f8b"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
