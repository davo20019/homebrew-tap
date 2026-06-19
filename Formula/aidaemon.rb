class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.6/aidaemon-macos-aarch64.tar.gz"
      sha256 "33f8f2b48d12a7d66fc9c4a823a5855050e3bd312ddfc7efaa3f86a1adcb3571"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.6/aidaemon-macos-x86_64.tar.gz"
      sha256 "7aab1a869cf2326edae1b87f872b64843196bd24c5175a5f2ada7b4c90c6efd8"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.6/aidaemon-linux-x86_64.tar.gz"
    sha256 "211a7d66968a9d6ea40f65d14ba1c4708e92ba9b7efb86b92fcda1961db9296c"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
