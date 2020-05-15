# commandbox-banner-hack

A CommandBox module for customizing all the text in the CLI startup banner.

## What it does

The CommandBox Banner Hack module allows you to customize the version, quote, and welcome message seen in the CommandBox startup banner.

![CommandBox Banner Hack screenshot](https://github.com/mjclemente/commandbox-banner-hack/raw/master/assets/screenshot.jpg "CommandBox Banner Hack screenshot")

### Why would you want to do this?

The initial use case was a presentation - I wanted my demos and screenshots to display custom banner text in the CLI. I think a more likely reason for using this module is: "Just for fun."

## Installation

Simply run the following command to install the module.

```bash
box install commandbox-banner-hack
```

Once the module is installed, it uses the namespace: `bannerhack`.

### How it works

Run any of the following commands to hack your banner text. Be sure to run `reload` to see the updated banner.

#### Customize the version

```bash
bannerhack version "123.456.789"
```

#### Customize the quote

```bash
bannerhack quote "The problem with computers is they do what you tell them."
```

#### Customize the welcome text

```bash
bannerhack welcome "Welcome, this is our farmhouse."
```

#### Clear customizations

```bash
bannerhack clear
```
