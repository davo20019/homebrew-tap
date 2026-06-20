class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.10/aidaemon-macos-aarch64.tar.gz"
      sha256 "a77544ccb83c6e7dc7f647bc5a8c5473ea0f5b191e5372d28c5d7e9db8fe0593"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.10/aidaemon-macos-x86_64.tar.gz"
      sha256 "20ae2ab692c407ced1171dff968e6f09f8f34b5a29711c30cbdfbdf3cde58a53"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.10/aidaemon-linux-x86_64.tar.gz"
    sha256 "91109f1fa09ef1f26f20b497bd51d05fd839e755f724991082a6b200d9912621"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
