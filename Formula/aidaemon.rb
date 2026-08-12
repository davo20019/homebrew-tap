class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "ea6f67a4dc48319847ce9afa1d6cd4d90a0ce6befa2934b2e7eb4710a59f0141"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "f2d3b1e3a4824637c4e5c4321ebcaa52a06a8da6cffc199b89dd00240dc916ed"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "d23b8939b689119bfc0490fa88b8cc442e5c3f6d5923755f084ba8081d2b34b8"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
