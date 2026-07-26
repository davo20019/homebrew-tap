class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.29/aidaemon-macos-aarch64.tar.gz"
      sha256 "37f1aa516556f0cb45a410e7a86702f9f7127c46719562b7a7a23826ef0c320d"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.29/aidaemon-macos-x86_64.tar.gz"
      sha256 "ae559881cfe811ef26c35efd21ba045c31a1dab2b888f8dec8711916855847d3"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.29/aidaemon-linux-x86_64.tar.gz"
    sha256 "978fead74048c341de55f0e15a1b3b6651c4c5eb1ca14d4516eac6ed2a31366c"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
