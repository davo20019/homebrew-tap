class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.6/aidaemon-macos-aarch64.tar.gz"
      sha256 "19f51b153f82240528b920da9da6807286f2a28808c51a93e98e6b0069463501"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.6/aidaemon-macos-x86_64.tar.gz"
      sha256 "3c1f60cb364d1199727df6096ab4a721cceb551f5d63a75ac063016c011edf05"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.6/aidaemon-linux-x86_64.tar.gz"
    sha256 "b26a9ca0fa0aeb08984ee6cf14476345192e53a0f311f7adb58c2d3813633713"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
