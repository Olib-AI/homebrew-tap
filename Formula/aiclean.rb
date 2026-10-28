class Aiclean < Formula
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.5/aiclean-darwin-arm64"
      sha256 "1487bf3cb7003274c3b98d5ceb200afceeca392ec114813cc2edbf8f3a60427d"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.5/aiclean-darwin-amd64"
      sha256 "7ce19e01831c0970703d54a0f2a829cc84df6261e368406f1573ec0358d03871"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.5/aiclean-linux-arm64"
      sha256 "a26fbb8f03e9eda8f1c31bd7379a702ef93170e2859fe22de4c5e83e1d38ba04"
    else
      url "https://github.com/Olib-AI/llm-cleanup/releases/download/v0.3.5/aiclean-linux-amd64"
      sha256 "fe9aece9161db870318ae5a0a6cdffe3e103631c552bb205a996f4d01417b869"
    end
  end

  def install
    bin.install Dir["aiclean-*"].first => "aiclean"
  end

  test do
    assert_match "aiclean", shell_output("#{bin}/aiclean --version")
  end
end
