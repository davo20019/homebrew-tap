class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-macos-aarch64.tar.gz"
      sha256 "b3a174d78fe140a6f2b07b98935a11e461179ec1cc3a10cfb558264b0927f0ef"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-macos-x86_64.tar.gz"
      sha256 "c16717034f38289b10d0f1c5a10c5ebb4a932e2bcd9a44ec2f6e63e36067200b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-linux-x86_64.tar.gz"
    sha256 "858c65e725a51132b36fb05227d4b70f095a972a2a94319e93845a5c47deeab4"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
