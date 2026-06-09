class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "27ab2c7d16889488984db62bb4fd873fc9e424396a4d904907c1c26db82a90a1"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "9648d2fa0ee021522a22a7ed8b8bc9abfd037767de8b1715274ebdbdbaab230e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "6ae50ba001797fa6b72b499958d3b8b730417304ec3b11d2cb5d8f7036499047"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
