class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.3/aiclean-darwin-arm64"
      sha256 "74d809698b3d1b2271d741edc0d79cd114bb717615820cdea0452b5a50583a09"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.3/aiclean-darwin-amd64"
      sha256 "5826a425df97360f0356efe4ef12f5315d176eb8abad816a8aea407c7fadd554"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.3/aiclean-linux-arm64"
      sha256 "23514824de522107041f01260e371df7ff50e9de70043aa18b2ba059cc39118d"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.3/aiclean-linux-amd64"
      sha256 "0ef3b779f4c3710ad492cd7f9bc07498f614a9e2d64c42effd549f67647bf33b"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#{bin}/aiclean --version")
  end
end
