class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.2/aiclean-darwin-arm64"
      sha256 "df206939af7c9ec7e2e321f48168c1fb5a28ed57a7e2da76223cb64e5085e14d"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.2/aiclean-darwin-amd64"
      sha256 "3912d5eb9d1644d8a4da875d359ab82fe4d0f927204769e4981787cd4c6c3f0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.2/aiclean-linux-arm64"
      sha256 "69009a2465d998135b302b17ad86756205b1ce4fdd8e498342c3a8ca30ca310d"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.2/aiclean-linux-amd64"
      sha256 "ea5addd23b12085fbd82ca476ffe2b4642b5986f39dd41a1f1ac19781ed85f2b"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#{bin}/aiclean --version")
  end
end
