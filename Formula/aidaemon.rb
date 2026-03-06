class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.16/aidaemon-macos-aarch64.tar.gz"
      sha256 "0952402b983a422fc9c125a27d321a34dc71ec58dac5d845e1c656e85fdbe2b4"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.16/aidaemon-macos-x86_64.tar.gz"
      sha256 "a98c7d19acbcac54583795aea87480cb1f76f8e2ae2cb091b6fcb35a9c8c9fa5"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.16/aidaemon-linux-x86_64.tar.gz"
    sha256 "8da62d1e851e59317a46c931775f3d71730c146b06f1acaec29572fe0c5628f9"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
