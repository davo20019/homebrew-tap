class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.10/aidaemon-macos-aarch64.tar.gz"
      sha256 "6c138411b12529f3c5d8f4da69d5221401b9e7312cc32ca3d0dd4497d25f3885"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.10/aidaemon-macos-x86_64.tar.gz"
      sha256 "a5a5fb1f308a1c2753658356cb3137cd06278a6c38ef2dafcf3ae813c630120e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.10/aidaemon-linux-x86_64.tar.gz"
    sha256 "2f694066f72ec8b26b46ea098bd3388ef97bafb1798b0f9c393e258297860b04"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
