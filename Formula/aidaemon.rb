class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.10.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "acd78e12a8daea2a63bcd8ef811b95d76d6aa2a83e7809fc4c7c254ebe5ac395"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.10.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "6b8cf4d65266824518947404b1b1ac75993a8a5f3b42f95810734caf5b6177e8"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.10.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "b75039d59e494d453ee869724f984db814f059788e27178a530c4fba941e50c0"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
