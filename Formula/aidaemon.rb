class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.11/aidaemon-macos-aarch64.tar.gz"
      sha256 "504240d5f965a8effc3b0c3bbbbb85b042efafbd382283e77e72a8e53c5aa5d2"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.11/aidaemon-macos-x86_64.tar.gz"
      sha256 "9fac2cd657ec5337821272a2f0e9a9582031ca24539aeba157fe45638e3fe06f"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.11/aidaemon-linux-x86_64.tar.gz"
    sha256 "10373a17fe543b3e299300c0fc62e1990293ca33f54fdcc7496ec32f72f87ca1"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
