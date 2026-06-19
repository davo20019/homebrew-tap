class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.7/aidaemon-macos-aarch64.tar.gz"
      sha256 "296baeb3849026e970f55528c33dadae3b5fa20d5530c359338293ac7d9f0e49"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.7/aidaemon-macos-x86_64.tar.gz"
      sha256 "d53489aa7ba43b66eaa4dc90a73788e6f1931bd7241b741615754a73fd6dc56b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.7/aidaemon-linux-x86_64.tar.gz"
    sha256 "9f03ea451e700b508ef7bdfeedf70865d2d56737efa1c025b5ef030791aa6e5a"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
