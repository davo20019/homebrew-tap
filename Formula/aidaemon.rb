class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.8.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "dc8c9c35181c93e05838ea7a3927639aaa2a693e3b2477b1658808bdcafb95c1"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.8.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "43e0eb3d420bd5608a225a94f3b35f475733416dcf795fde5d9d974e5844b260"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.8.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "9f0b2307a2c166b40e9a45b879779bf1a784f2fe1ab876f172daa203a7aaaa74"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
