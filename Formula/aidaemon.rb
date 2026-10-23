class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.9/aidaemon-macos-aarch64.tar.gz"
      sha256 "a4f92c00931b46c7a2c3b2a1dfc5c82e41425df9e4f4d2bd500ccf0a758ea93c"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.9/aidaemon-macos-x86_64.tar.gz"
      sha256 "1654012727d46e6a03df1a0a7682a1b1e55ad5884d6f219470982a4a98470fe1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.9/aidaemon-linux-x86_64.tar.gz"
    sha256 "470f63749687f74546c69e04649e2b105c5386976bc7044018f74d8818dc9f42"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
