class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.23/aidaemon-macos-aarch64.tar.gz"
      sha256 "393c1587aca0a7a6bf421dd550ed3f474d7a65b37d35afcf868b32f918ab0438"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.23/aidaemon-macos-x86_64.tar.gz"
      sha256 "a2d194cdd1533e6cde56b6be5cb28528516fba25d50624513fe97a54d4f48773"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.23/aidaemon-linux-x86_64.tar.gz"
    sha256 "91b799642a2dc2a501d08e463f7f47ff41d5a3d721b39e59bf4c78ddf5a08080"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
