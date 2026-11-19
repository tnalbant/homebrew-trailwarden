# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2026 Turgay Nalbant
#
# Cask for the menu-bar app. Lives in tnalbant/homebrew-trailwarden, so users run:
#   brew tap tnalbant/trailwarden && brew install --cask trailwarden
#
# `sha256` is filled in by scripts/publish.sh from the release's SHA256SUMS.

cask "trailwarden" do
  version "0.2.3"
  sha256 "6db12026710a3e8e1231936411679cebb4b602f544c4b48ef0a5324b73e98314"

  url "https://github.com/tnalbant/trailwarden/releases/download/v#{version}/Trailwarden-#{version}.dmg"
  name "Trailwarden"
  desc "Local audit trail for coding agents"
  homepage "https://github.com/tnalbant/trailwarden"

  depends_on macos: :sonoma

  app "Trailwarden.app"

  # It lives in the menu bar; quit it before an upgrade replaces the bundle.
  uninstall quit: "app.trailwarden"

  zap trash: [
    "~/Library/Application Support/Trailwarden",
    "~/Library/Preferences/app.trailwarden.plist",
  ]
end
