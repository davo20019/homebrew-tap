class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.30/aidaemon-macos-aarch64.tar.gz"
      sha256 "d00436761a7e5f60e9cb060c678a6995e96230d3d98c691173a1224adc6dfa05"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.30/aidaemon-macos-x86_64.tar.gz"
      sha256 "f430912bd8bd3056e0bfc4d276a187b512dc0d7fe6b4ef3203a339b877ba3d1b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.30/aidaemon-linux-x86_64.tar.gz"
    sha256 "13e704a43bb1139c17c7bb2be4bb71b7e95ff38b7ba8332d436de36eadfbb5ad"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
