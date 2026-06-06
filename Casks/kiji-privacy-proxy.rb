cask "kiji-privacy-proxy" do
  version "1.3.0"
  sha256 "4fa4b0c4b86066ee08c260d43c36f88b112a93724360b5fc1a37230014afc534"

  url "https://github.com/dataiku/kiji-proxy/releases/download/v#{version}/Kiji-Privacy-Proxy-#{version}.dmg",
      verified: "github.com/dataiku/kiji-proxy/"
  name "Kiji Privacy Proxy"
  desc "Privacy layer that masks PII in requests to AI APIs"
  homepage "https://github.com/dataiku/kiji-proxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kiji Privacy Proxy.app"

  zap trash: [
    "~/.kiji-proxy",
    "~/Library/Application Support/Kiji Privacy Proxy",
    "~/Library/Caches/com.kiji.proxy",
    "~/Library/Caches/com.kiji.proxy.ShipIt",
    "~/Library/Logs/Kiji Privacy Proxy",
    "~/Library/Preferences/com.kiji.proxy.plist",
    "~/Library/Saved Application State/com.kiji.proxy.savedState",
  ]
end
