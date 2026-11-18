# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2026 Turgay Nalbant
#
# Cask for the menu-bar app. Lives in tnalbant/homebrew-trailwarden, so users run:
#   brew tap tnalbant/trailwarden && brew install --cask trailwarden
#
# `sha256` is filled in by scripts/publish.sh from the release's SHA256SUMS.

cask "trailwarden" do
  version "0.2.2"
  sha256 "54c25d8287f13fbeb231c298e185d0f57a26af65846491e1516deb39b8f385a4"

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
