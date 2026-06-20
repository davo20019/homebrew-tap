class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.8/aidaemon-macos-aarch64.tar.gz"
      sha256 "847e0d25623c7dc659950a4e134cc3bcb1da984824a53e1c3d07d54dd19bcb8b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.8/aidaemon-macos-x86_64.tar.gz"
      sha256 "459c85ee31fe6662a09c7e48f3d9a9714ca434017184b655967eec100ec1219e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.8/aidaemon-linux-x86_64.tar.gz"
    sha256 "4b4f5130396f69c837398d29488cdcc4a7f64f0b151f56cc3c7ccc5b33bf3885"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
