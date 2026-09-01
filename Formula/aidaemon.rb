class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.2/aidaemon-macos-aarch64.tar.gz"
      sha256 "5ff8a21f34cc16bfc71187feafaafbaf72b2f8306d19b6829d518807971332f5"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.2/aidaemon-macos-x86_64.tar.gz"
      sha256 "f03da83a396fd29381a300653f1369aa9f08c5260e602bd0ae6a1318e257278b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.2/aidaemon-linux-x86_64.tar.gz"
    sha256 "0e0bdbd22b55b0feb8978b5389543e96b5e105bef57a24f265d6fa4390a7e64d"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
