cask "llm-cleanup" do
  version "0.3.2"
  sha256 "fdd726937f7d06a000f3152937388e8226ee0d6ce615c3689f6e582762e2680c"

  url "https://github.com/Olib-AI/llm-cleanup/releases/download/v#{version}/llm-cleanup-macos.zip"
  name "LLM Cleanup by Olib AI"
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "LLM Cleanup by Olib AI.app"
end
