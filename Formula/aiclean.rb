class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.4/aiclean-darwin-arm64"
      sha256 "d2a6307bf2a00af9cc56c03ac9fcf1eb98097c278d1cade94b240ecb978043b1"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.4/aiclean-darwin-amd64"
      sha256 "1ca3e81154f5c1775bbe1f6f78e0dc601727c43159bacfbd63d1f4da3df94119"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.4/aiclean-linux-arm64"
      sha256 "02d64653492cee77e15b20ce06f5055838a3e0aaeb17777295691496446879fa"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.4/aiclean-linux-amd64"
      sha256 "083ee24ba141a4c319142326f9361e9fa053275cc7fdce0d3690ea7140d1f67c"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#{bin}/aiclean --version")
  end
end
