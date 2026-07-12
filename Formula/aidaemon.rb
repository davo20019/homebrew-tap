class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.25/aidaemon-macos-aarch64.tar.gz"
      sha256 "3e0857164c05cc7219efa88a4c45777cb868f8c3573e02b068888d9d64af75ad"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.25/aidaemon-macos-x86_64.tar.gz"
      sha256 "896c1e03fc79890749abfe1b959ae84b1ccdb745d66be7fc67ff295cddeefaa7"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.25/aidaemon-linux-x86_64.tar.gz"
    sha256 "4b7b9710da3018cff64f84822f9e5e69afdb0a2bb522eba776fd8be815c49dc5"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
