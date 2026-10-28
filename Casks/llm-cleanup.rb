cask "llm-cleanup" do
  version "0.3.5"
  sha256 "0e1a6d12e32d7b83012ff82b2ffa419df273bbb4395d292310d9a1bcb53c4c13"

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
