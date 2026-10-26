class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.1/aiclean-darwin-arm64"
      sha256 "02bf3679f9a36cbaffa3a7d8cb8136bac213eed5f6f0c1dd4b7c0b2f68fe9ecd"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.1/aiclean-darwin-amd64"
      sha256 "5e6ec944726e374fc774d8305292f791a96aec77ec28a08bba7a53110c279ed3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.1/aiclean-linux-arm64"
      sha256 "0bade4098186787f3efa053a321dd66f314b00c380aab27070b0ff1a2adab739"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.1/aiclean-linux-amd64"
      sha256 "b162ad85b9d4ea35642c16c8f5aeb389729c7bd982dd73a77998a9811eb560a3"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#{bin}/aiclean --version")
  end
end
