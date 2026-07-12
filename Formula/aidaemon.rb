class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.24/aidaemon-macos-aarch64.tar.gz"
      sha256 "e256684fc211c369e98f379529674f5b52c9cae97d702754e040b6be5edc0596"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.24/aidaemon-macos-x86_64.tar.gz"
      sha256 "342656e2ddd49f620d9fd3feb04870429334ac59f1f6e1b04c60b45911b595e9"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.24/aidaemon-linux-x86_64.tar.gz"
    sha256 "e77312e7ffb8523ee664405b84d32d12f960445374ffe05ce37096ec70829cf6"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
