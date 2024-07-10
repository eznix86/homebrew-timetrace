# Installation

```sh
brew tap eznix86/timetrace
brew install timetrace
# or 
brew install timetrace@x.x.x-x

ttrace --version
```

## Version Support

| Version               | Formula                |
|-----------------------|------------------------|
| Latest                | `timetrace`            |
| 0.1.0-beta            | `timetrace@0.1.0-beta` |

## OS Support

|Operating System | Architecture      |
|-----------------|-------------------|
| Linux           | `x86_64`          |
| macOS Monterey  | `x86_64`, `arm64` |
| macOS Ventura   | `x86_64`, `arm64` |
| macOS Sonoma    | `x86_64`, `arm64` |

## TODO

- [ ] Automate a new version of the release
  - [ ] Create a bash script to generate a new `timetrace@x.x.x.rb` and update `timetrace.rb` with latest
  - [ ] Use Github CI cronjob to generate timetrace.rb (every week ? month ?)
  - [ ] Update docs accordingly
