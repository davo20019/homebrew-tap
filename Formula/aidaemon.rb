class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.18/aidaemon-macos-aarch64.tar.gz"
      sha256 "f5ad2990f4a2a2f7fd666d1219b8f2c635fa9c60bc69ea38d311fa4b4833b1fb"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.18/aidaemon-macos-x86_64.tar.gz"
      sha256 "023416fb767062fd9fd4146d8ca6524eefabe17b80775774376814628c0a7a86"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.18/aidaemon-linux-x86_64.tar.gz"
    sha256 "9130d58646f6ae30e7225ad46b34fb8f3ddaae3650f20a7fba6d3b33d0950743"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
