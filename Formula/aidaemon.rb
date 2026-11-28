class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.26.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "47f13fbabdf37bef78d83169beebe9dfec29f668aaf35bf263613c5036a43be1"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.26.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "d68196a4bcbb8ec8d70bb96fbf45df0cf9e7dbdda3ad22e0054bec1dfad417e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.26.0/aidaemon-linux-aarch64.tar.gz"
      sha256 "41dcd06a3dccfa496a936b7c32a668c9de8bee758fbacc3779c800d68d43c34c"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.26.0/aidaemon-linux-x86_64.tar.gz"
      sha256 "4bcbc3f079231fbeef8c1030a5320692a375e50e7aec4f40abb08eb4be29b5b0"
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
