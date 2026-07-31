class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.32/aidaemon-macos-aarch64.tar.gz"
      sha256 "fdfb62f02646309b2d25718b38abb16b600d7c2bb05c09c55a21bd2d92dc6f72"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.32/aidaemon-macos-x86_64.tar.gz"
      sha256 "f63d16e9c539cfb929e3783022c440c8d34f688a9433a9e7a13095d565373eb2"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.32/aidaemon-linux-x86_64.tar.gz"
    sha256 "3acc08ca6dcd8bb07265573c8a25e5d1396e7c879697aa90e194ace93da2ba5d"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
