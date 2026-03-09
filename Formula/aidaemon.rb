class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.21/aidaemon-macos-aarch64.tar.gz"
      sha256 "09fadd3697b84536572fcf88968a3ddef670d975f01a5eaa0bff7b0e767a475f"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.21/aidaemon-macos-x86_64.tar.gz"
      sha256 "9a026be76a81afab456595e386e984fb6cde5945c9f47b81e9712ff27bd4ed88"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.21/aidaemon-linux-x86_64.tar.gz"
    sha256 "324261756545e9e6ffda7ef9595632c5b986d173f9a0dd33fb5576032c557b1f"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
