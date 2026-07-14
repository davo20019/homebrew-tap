class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.27/aidaemon-macos-aarch64.tar.gz"
      sha256 "0ed764e975157b83f7a4f147a2f07efd03c3e11093beba09a995f038045d5efb"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.27/aidaemon-macos-x86_64.tar.gz"
      sha256 "f688775677a4aa88f473594dc4fcaa152e215f53e7e0e392f19397aefd14dd26"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.27/aidaemon-linux-x86_64.tar.gz"
    sha256 "4c84c707dff40ef22728356f8e65879cad7e781033a48cdc50c89825a19388f2"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
