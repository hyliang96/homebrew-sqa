cask 'slowquitapps' do
  version '0.8.1'
  sha256 '854425f2e8789d6ce67cf34fa5b015af74cee551355f471d32978fcf1d544ece'

  url "https://github.com/hyliang96/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  # url "https://github.com/dteoh/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  name 'SlowQuitApps'
  homepage 'https://github.com/hyliang96/SlowQuitApps'
  appcast 'https://github.com/hyliang96/SlowQuitApps/releases.atom'

  depends_on macos: '>= :mojave'

  app 'SlowQuitApps.app'
  binary 'sqa'

  caveats <<-DESC
  Accessibility permissions must be reset after updating or re-installing.

  Instructions are available in the README at #{homepage}
  DESC
end
