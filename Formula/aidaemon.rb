class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.19/aidaemon-macos-aarch64.tar.gz"
      sha256 "f00a06540dc94ab249598e0dc6fa0881ca964a4e0370034d582e1cfaffc1e8b8"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.19/aidaemon-macos-x86_64.tar.gz"
      sha256 "b135bb8d3dc348f63a7eafa3b864a268acd3ae2f456e79a58828ebf458b0b8e7"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.19/aidaemon-linux-x86_64.tar.gz"
    sha256 "116db893aff09636ac12ba75a504f1d249669c90e6621b4c8ca7ac7f67cb5cc7"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
