class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "eaf8f42a021a12a6ed2fa4c04da584c5438778e50f72d0e76c397b450f0b8988"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "02a0a7db905a9666ac780f16146357812dbba9cc5c2d3bff68b0e5a51469bb1e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "b15e995c7f998eeeea2dbbe2fc554c870d9ee2a62abd8bf120fe409227f28601"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
