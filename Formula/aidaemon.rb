class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "a4f591f37f681163ebbb5f373955b54aa0c3bad7cdd6302d70f831ca8aa586e6"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "19fb5b4dc428f16c9a811b813c32738264c4598d198561b25db902844b1de1a7"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "208c34cd11898e04ef0711d5bbab6d2fca8a264bc2ebe3eb7f272d5800efa729"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
