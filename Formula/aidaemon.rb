class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.20/aidaemon-macos-aarch64.tar.gz"
      sha256 "3a5e3e38ee25663fc2284410614e380764abec4778aa296b416b7ec9ab11bd99"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.20/aidaemon-macos-x86_64.tar.gz"
      sha256 "ed2ce2dc5beb55ec414db9bac5bbe6c4f3adf51f53b3a71d8f81fdc579ae0749"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.20/aidaemon-linux-x86_64.tar.gz"
    sha256 "4495c2cb30a58d3c782f5826f466fbc334a33f3215758c0375af1727e7b62066"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
