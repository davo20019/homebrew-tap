class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-macos-aarch64.tar.gz"
      sha256 "0666f478e7c0179f40359bf7d5d54ce03606a04d5559ca8a8a3ddc0abd9180db"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-macos-x86_64.tar.gz"
      sha256 "dc5d745a2c9e6b509f7e55d35b8cfa4f5db1cc25a526f819c25bebbfcc4c6f7e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-linux-x86_64.tar.gz"
    sha256 "e0e6a4417a3104ccff9c3d29cd3e8d2e27b2d27393ae1f049c66f876249a1c90"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
