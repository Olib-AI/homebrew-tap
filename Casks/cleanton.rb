cask "cleanton" do
  version "0.3.4"
  sha256 "c7e33123d81e9762482b1a12a5a15cabb50864407e0ee5d9c44ff4d40bf570fa"

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
