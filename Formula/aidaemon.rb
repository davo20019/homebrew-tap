class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.27/aidaemon-macos-aarch64.tar.gz"
      sha256 "ef1713bd07f1930ec6b5138cd132de7d98e0ff09e67a0facfea240cdf0526d83"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.27/aidaemon-macos-x86_64.tar.gz"
      sha256 "35b81fe3848ca118932f1a20ccc816b64a46e6f909c8ba4f9ca83c97e49674da"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.27/aidaemon-linux-x86_64.tar.gz"
    sha256 "6a74e577cedab171b0c45b3880452e4504c9f8258145be4ff9545a78552785ae"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
