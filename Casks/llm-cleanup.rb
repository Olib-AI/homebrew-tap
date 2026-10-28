cask "llm-cleanup" do
  version "0.3.4"
  sha256 "2e737821d9d0d93c4f779730764081dbb90bafed5104ac79329066d60e22bc9f"

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
