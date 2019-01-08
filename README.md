# GitHub Action for Gatsby CLI

This Action wraps the [Gatsby CLI](https://www.gatsbyjs.org/docs/gatsby-cli/) to enable common Gatsby commands.

## Usage

```workflow
workflow "Build Gatsby Site" {
  on = "push"
  resolves = ["build"]
}

action "build" {
    uses = "jzweifel/gatsby-cli-github-action"
    args = "build"
}
```

```workflow
workflow "Build Gatsby Site in Subdirectory" {
  on = "push"
  resolves = ["build"]
}

action "build" {
    uses = "jzweifel/gatsby-cli-github-action"
    env = {
      GATSBY_PROJECT_PATH = "./client"
    }
    args = "build"
}
```

### Environment variables

* `GATSBY_PROJECT_PATH` - **Optional**. Directory from which to execute the Gatsby CLI.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
