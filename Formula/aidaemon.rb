class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.13/aidaemon-macos-aarch64.tar.gz"
      sha256 "81dc1cb04c5bce90a2f31eac96aafc2e0f63a3e4dfed22c9235d0f4bdf3fa5eb"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.13/aidaemon-macos-x86_64.tar.gz"
      sha256 "cb3c4d965c520c90798abd2bde7bd9a970da317a3fe7fcbd20e82eea4615be14"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.13/aidaemon-linux-x86_64.tar.gz"
    sha256 "5738edca18a4945e4db72120fe82f72d23c5e3184e94d68d9add4c9d13d4fb4f"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
