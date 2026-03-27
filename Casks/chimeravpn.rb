cask "chimeravpn" do
  version "1.0.1"
  sha256 "7803784a1f72453096dce4fdadeed112f6d35a5f035286e6ba171a27f26f177b"

  url "https://github.com/CHIMERA-SEC/downloads/releases/download/v#{version}/ChimeraVPN-#{version}.pkg"
  name "ChimeraVPN"
  desc "Secure WireGuard-based VPN client"
  homepage "https://chimerasec.com"

  pkg "ChimeraVPN-#{version}.pkg"

  uninstall script: {
              executable: "/usr/local/bin/chimeravpn",
              args: ["service", "stop"],
              sudo: true,
            },
            pkgutil: "com.chimerasec.chimeravpn",
            delete: [
              "/Applications/ChimeraVPN.app",
              "/usr/local/bin/chimeravpn",
            ]
end
