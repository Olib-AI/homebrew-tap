cask "cleanton" do
  version "0.3.1"
  sha256 "1f4fc08c298f45628fab79c6a409c9842d1e6e7273856992f3ce5dca01d70519"

  url "https://github.com/Olib-AI/cleanton/releases/download/v#{version}/cleanton-app-macos-arm64.tar.gz"
  name "Cleanton"
  desc "Disk cleaner by Olib AI"
  homepage "https://www.olib.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :ventura

  app "Cleanton.app"

  zap trash: "~/.config/cleanton"
end
