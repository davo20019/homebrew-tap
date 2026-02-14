class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.3/aidaemon-macos-aarch64.tar.gz"
      sha256 "0b28a0f83b330052d1d7103a59eee8b60b696975233163afa17ebc23ad4964e3"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.3/aidaemon-macos-x86_64.tar.gz"
      sha256 "8709696e1cba5481959688283003ac73fa4e8d4080ccdae0e58c67dea1dd8455"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.3/aidaemon-linux-x86_64.tar.gz"
    sha256 "7032bbd9c7fbbae3450fca9bc66d92ad5d1083b26ef209b338b603cb08357a96"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
