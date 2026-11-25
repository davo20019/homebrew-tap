class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.24.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "16f7d2234684f8da3669bd7ba4b79c7147b0cfe8a968777de8dc6fe5d8470b58"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.24.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "0c94b61f7b3c0925704158a7cb6bf90d36b56567722cd0c77bd764e342e7069a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.24.0/aidaemon-linux-aarch64.tar.gz"
      sha256 "9c579c0e59a99a0c347c156c1d61cf0aa9781bd1af1b535e3e591f93ebbbb404"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.24.0/aidaemon-linux-x86_64.tar.gz"
      sha256 "aaec8e3c9f9495fec9172fd61f713b62b464051299a236027a8fa4b412966261"
    end
  end

  def install
    bin.install "aidaemon"
    # The app (`aidaemon app` / `aidaemon tui`); older archives lack it.
    bin.install "aidaemon-app" if File.exist?("aidaemon-app")
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
