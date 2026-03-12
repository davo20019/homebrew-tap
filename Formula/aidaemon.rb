class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.24/aidaemon-macos-aarch64.tar.gz"
      sha256 "7fc0629e97380806cd67e3ab5ac09f7f511d93b5f355da75f8de4c7c5e8a6066"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.24/aidaemon-macos-x86_64.tar.gz"
      sha256 "1b395f28fc2d55023d14a2ff438ee51ff5c5556d74334599623bf0cd0aaea50d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.24/aidaemon-linux-x86_64.tar.gz"
    sha256 "d05c5375a110b2eaf64b5dc12ba7e69aaf4f7b0b8031b0d23fe7b0424783b243"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
