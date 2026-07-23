class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.28/aidaemon-macos-aarch64.tar.gz"
      sha256 "6fd05d6406fa4fcad9ba1f9f14d82e6ba339461463423ff7257c7c4c1990ba18"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.28/aidaemon-macos-x86_64.tar.gz"
      sha256 "22793510b0a2c7e132beaa275a718fd0e9c835361c01e5067907344889c5f98d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.28/aidaemon-linux-x86_64.tar.gz"
    sha256 "181064b6f621678b0c5dc83a5d00040b2b967b6b4912a54ef89972fd4d0435e5"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
