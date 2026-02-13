class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "44273d383aaf321a4225b253e14483cd9aeed08d2e55bb4c91cdad4d81d6b745"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "4e75c8988dc358108a8120491ac170f94be1bc1c7a640d42d8da17c82cdb9e19"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "842c8842b1f92c8d54d14b5088f5261c3d3a2f2376ee44354aa7967176a1f094"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
