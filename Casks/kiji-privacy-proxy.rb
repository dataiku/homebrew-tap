cask "kiji-privacy-proxy" do
  version "1.1.4"
  sha256 "b9452a2ed12df51ccb65b28d3543f9174ccfdd0433f9c3999ab2b5a7f43711dd"

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
