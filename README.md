# GitHub Action for Gatsby CLI

This Action wraps the [Gatsby CLI](https://www.gatsbyjs.org/docs/gatsby-cli/) to enable common Gatsby commands.

## Usage

```yml
on: push
name: Build Gatsby Site
jobs:
  build:
    name: Build Gatsby Site
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Build Gatsby Site
      uses: jzweifel/gatsby-cli-github-action@master
      with:
        gatsby-arg: build
```

```yml
on: push
name: Build Gatsby Site in Subdirectory
jobs:
  build:
    name: Build Gatsby Site
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Build Gatsby Site
      uses: jzweifel/gatsby-cli-github-action@master
      env:
        GATSBY_PROJECT_PATH = "./client"
      with:
        gatsby-arg: build
```

### Inputs

#### `gatsby-arg`

**Required** The arguments to pass to Gatsby CLI. Default `build`.

### Environment variables

* `GATSBY_PROJECT_PATH` - **Optional**. Directory from which to execute the Gatsby CLI.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
