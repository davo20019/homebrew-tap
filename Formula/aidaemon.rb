class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.3/aidaemon-macos-aarch64.tar.gz"
      sha256 "ef5795bbac70f2801c7a4512ed2c9f7abc2c7a65800490b661a91d9ec2900223"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.3/aidaemon-macos-x86_64.tar.gz"
      sha256 "a6c4b7587e78d2d9eb079b777169ab180b1099bfe04c8ecd15915ea528ef4d25"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.3/aidaemon-linux-x86_64.tar.gz"
    sha256 "b57d3c028ad4d3613ede4007028f1d756d3a672009abcdf9bb08431ded3bc14e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
