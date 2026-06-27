class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.16/aidaemon-macos-aarch64.tar.gz"
      sha256 "f93cb97c098cb43df1f6376ec398b54b495ecc534cc71277919bda2ca1a043b2"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.16/aidaemon-macos-x86_64.tar.gz"
      sha256 "528a0eed8632b04d8da66b73d5bb44492f511fd3bd602af530a567b8b03a3449"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.16/aidaemon-linux-x86_64.tar.gz"
    sha256 "d83717960c538caf10e6538579a6662267702e6fe3e7a5f212b52a077555f800"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
