class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.5.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "3d3dbd8b9337709d42ce509b68360edaf6af2b190bf3839fb982620b0899cb34"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.5.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "b42cfebe38455f0fc311d79206b824f104f6af7788328d5c35e10497396c08d3"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.5.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "dd0c459f905dd3fd0c3980e19333b4765acdd5bd3b6858815e96f53f8f2d54a1"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
