cask "llm-cleanup" do
  version "0.3.1"
  sha256 "0aed2bda9357567fff44018b72afbeae5a05f79d571f7d0275c445160cf4c46b"

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
