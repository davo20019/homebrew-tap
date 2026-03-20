class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.28/aidaemon-macos-aarch64.tar.gz"
      sha256 "22cd8eaebe2e3e5caff2ce2c0fc64a25b59b7306c2cbc15e3d6232f2eb853fcd"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.28/aidaemon-macos-x86_64.tar.gz"
      sha256 "52196b333a1ae67400e0f0d93a3bf2e6a5772ea5505e684ac4f38ddc721413e1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.28/aidaemon-linux-x86_64.tar.gz"
    sha256 "0c6e2b10049edae5a5f4a65b6313e8885844cbe9c9d22c2c502aee698405a6c9"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
