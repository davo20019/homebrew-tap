class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.12/aidaemon-macos-aarch64.tar.gz"
      sha256 "7ceab7ce9987e14f726b0fb5aad3278bc96e3df3e91929ec7981f84f6ce583b5"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.12/aidaemon-macos-x86_64.tar.gz"
      sha256 "8e24a0a2da8f78d1d52199506a54c4f2848d6d3917c6ee641eee5826913a5ac1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.12/aidaemon-linux-x86_64.tar.gz"
    sha256 "428df279ad092449d97e3ecfb29d85f2f775d8d9f8810f05e371a500a38c4332"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
