class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.9/aidaemon-macos-aarch64.tar.gz"
      sha256 "b29ac189f4b675caadf65e402ba2ea4cd50e47757133fc15ce6a81dc56557c6d"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.9/aidaemon-macos-x86_64.tar.gz"
      sha256 "725c5d7cb96dcfd8528d45dc91dbbacd2f117ab8c831be25e1c209e41f4b79cc"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.9/aidaemon-linux-x86_64.tar.gz"
    sha256 "b9a05e21522ea4456b0bdf4312d96a9e79fb9beabbe6261b2696ce86ae417ee2"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
