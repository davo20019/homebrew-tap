class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.25/aidaemon-macos-aarch64.tar.gz"
      sha256 "2b5f988e7282200c46b11ee656674a2cc7820fa7ddfea1826478c9e8e82e45a6"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.25/aidaemon-macos-x86_64.tar.gz"
      sha256 "d4afac597f6d4e901d09f4ba0ec6f89e458f3c3bb33678be4db6053ae0b20b7c"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.25/aidaemon-linux-x86_64.tar.gz"
    sha256 "0ff966ccb0fba4430f8b0efa800e7ec61d0baaff68dd9647884c165832378790"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
