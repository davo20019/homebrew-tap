class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.3.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "26d6a33da5053938ef280a33f30890803feeaba8e4fccda62dabcd1e11d659b0"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.3.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "48b26d31d66e9bf370dc1278be7cd9c8f24380c0309971868fc7a0c1152c146b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.3.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "feda3f11567e30aab94f9963d4fdd9ba17a4c77f8278e10e58443e3d2231b512"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
