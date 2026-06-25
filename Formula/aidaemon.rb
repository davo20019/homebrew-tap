class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.14/aidaemon-macos-aarch64.tar.gz"
      sha256 "497c77f7f29166abe698aa232b3354fcfa4cf2d4cb33f835b90f77150bab9632"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.14/aidaemon-macos-x86_64.tar.gz"
      sha256 "66ed6b4317e831d98e47da09b49c5618c7085a53e76ee704447b007396fea2e5"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.14/aidaemon-linux-x86_64.tar.gz"
    sha256 "0ec1d799aa2bcfae5b5f8d0a09103c075503387e5c0503ea0ce2d23e1fc6bf00"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
