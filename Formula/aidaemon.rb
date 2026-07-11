class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.22/aidaemon-macos-aarch64.tar.gz"
      sha256 "d4aed564c1767537dcaf03c8b2d269097ca307fc0733b22d7c237bc84cf98cbc"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.22/aidaemon-macos-x86_64.tar.gz"
      sha256 "209b017d3a7a778605a43b6c562720a47361599f2c51a4b5c662b9a81fd992aa"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.22/aidaemon-linux-x86_64.tar.gz"
    sha256 "d1ce015c82ff0f9772d32110682a3cddd93df2ba2a8445f032369aa8db2230ec"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
