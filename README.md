# Template registry for Code Server deployment template repos

## How it's works?

1. [Register your template.][register]
2. Complete the prompts, like accepting the org invite and optionally transferring your repo into here.
3. Reply `@RecapTimeBot register owner/repo` (replacing `owner/repo` with your repo link without `https://github.com/`
path) so we can automatically add your repo into the registry.

## Available commands

You must be the issue author for these commands to work, otherwise the bot will
delete the command you sent to avoid spam. Remember to prefix commands with `@RecapTimeBot`
followed by an space. You cannot use these commands in the issue description, yet.

### `register`

**Description**: Registers an repo into the registry. The bot will generate an random slug
containing 3 words, seperated by dashes (e.g. `require-build-confrim`) but you can request
[an slug change](#request-new-slug). Private repos are not supported.

**Arguments**: `owner/repo` (required)

**Example invocation**:

```md
@RecapTimeBot register cdr/deploy-code-server
```

### `unregister`

**Description**: Removes an repo from the registry. Please use `update` if the repo has
has been renamed or changed ownership/username. Once triggered, your issue is automatically
assigned to [Andrei Jiroh](https://github.com/AndreiJirohHaliliDev2006) but any member of
`@code-server-boilerplates/maintainers` and `@code-server-boilerplates/contributors` can assign
to themselves and resolve the issue in case The Pins Team members are not available within 14 days.

**Arguments**: `owner/repo` (required)

**Example invocation**:

```md
<!-- This doesn't work because it's belong into @code-server-boilerplates,
     and requires further assistance from org maintainers. -->
@RecapTimeBot unregister code-server-boilerplates/starter-pack
```

### `update`

**Description**: Update repository links, in case the repo got renamed or changed owner's username or repo's ownership.
Remember that requests for repository link update are reviewed on per-case basis and you cannot change repo link in the
registry again for the next 30 days. You don't need to do this if you converted your account (we mean your username)
into an GitHub org.

**Arguments** `old-owner/old-repo new-owner/new-repo`

**Example invocation**:

```md
@RecapTimeBot update bcmpt/deploy-code-server cdr/deploy-code-server
```

### `request-new-slug`

**Description**: Old slugs, including generated ones, are still active up to the day you unregister it from the registry.
Remember that these are reviewed by an human, so be patient. If `owner/repo` or `slug-name` is only provided, automagically
falls back to ussing slug generator.

**Arguments**: `owner/repo|slug-here <random|user-defined-slug>`

**Example invocation**:

```md
<!-- Request an slug change with user-defined slug -->
@RecapTimeBot request-new-slug ThePinsTeam/deploy-code-server cdrs-internal-thepinsteam

<!-- Or probably let use do the work for you.-->
@RecapTimeBot request-new-slug code-server-boilerplates/nodejs-rust-mix
```
