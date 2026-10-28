cask "llm-cleanup" do
  version "0.3.3"
  sha256 "4b68846be0ad9d13100d4959d0ca680431a43491585ff7468fab77211d2d49dc"

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
