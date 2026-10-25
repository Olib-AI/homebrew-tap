class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.0/aiclean-darwin-arm64"
      sha256 "6b841ccaa168235c419b156f4df524512a2e4ffbc43869291c6162afe17170c3"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.0/aiclean-darwin-amd64"
      sha256 "2758c41cf460af6741579afaff458c4117e8ef111f741f7cfffe90dd3a1620b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.0/aiclean-linux-arm64"
      sha256 "a02bec68ab997fb9d80b7135bb66659076ce0896a11de7f01cd372e814334068"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.0/aiclean-linux-amd64"
      sha256 "ec9c46875ff6d36a644b197c5b568539ce300c7c4e258e6e8df946d8c7b68ec4"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#<built-in function bin>/aiclean --version")
  end
end
