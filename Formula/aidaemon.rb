class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.20.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "9b9ef8a68ebd715a6b87a96175b06279c6547c787152e5258d718612b7c8ee96"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.20.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "4ac51b93bebb3ffed080d86fc1234c76c1a23f5e3b3c124ec8206e483693f35d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.20.0/aidaemon-linux-aarch64.tar.gz"
      sha256 "0810be2a2596af89ef7a69d8564e97ac7f73e6848f494a9f7208a94a7e1dc277"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.20.0/aidaemon-linux-x86_64.tar.gz"
      sha256 "9ad1d77539f30fe6dcffd678b6aae94df9ca1ec001601a5443310f933d19a0e0"
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
