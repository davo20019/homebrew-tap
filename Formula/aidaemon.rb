class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.9/aidaemon-macos-aarch64.tar.gz"
      sha256 "0cc8e6e17c9a0fc6753986621305a9ff5e12f1f62c569414322a84f5feb6e506"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.9/aidaemon-macos-x86_64.tar.gz"
      sha256 "1e2b94a6a823cee91bdda0774ac2d40ef1a173298d23896ae70e3bf79f109ae6"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.9/aidaemon-linux-x86_64.tar.gz"
    sha256 "654540f548cad2f7b84b57628a1562ade04a3057257b3c572039ab19b8bd5eb0"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
