class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.14/aidaemon-macos-aarch64.tar.gz"
      sha256 "843a82b391c6681550700a3a674361fe1d721428260cccd09f7bde5151611017"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.14/aidaemon-macos-x86_64.tar.gz"
      sha256 "256b8fc900956256bbb3cb9fad3ff6e6a1ee74919404a8544dc05e6d2a340cfb"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.14/aidaemon-linux-x86_64.tar.gz"
    sha256 "0ff672cb54db195aca9a57983e6cbcc7392e4e816a005bebb1c298ffedef2a64"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
