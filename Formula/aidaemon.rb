class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.7/aidaemon-macos-aarch64.tar.gz"
      sha256 "e46f0ce232bb786341863d0876ef2f42500f70249a42609c05637cba2a9fdf25"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.7/aidaemon-macos-x86_64.tar.gz"
      sha256 "8b2d7d8312bf205ad9e9df300e8aa18a7f4b0ccaaf143886158a968ac73ce51d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.7/aidaemon-linux-x86_64.tar.gz"
    sha256 "cac0a2e79d86cfbc66e54ee313b46491c91282cb430546a8885c65ebbe87697f"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
