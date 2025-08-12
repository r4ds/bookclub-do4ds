# DSLC DevOps for Data Science Book Club

Welcome to the DSLC DevOps for Data Science Book Club!

We are working together to read [_DevOps for Data Science_](https://do4ds.com/) by Alex K Gold (Chapman & Hall, copyright 2024, [9781032100340](https://www.routledge.com/DevOps-for-Data-Science/Gold/p/book/9781032100340)).

Join the [#book_club-do4ds](https://dslcio.slack.com/archives/C03SMHQ0RJP) channel on the [DSLC Slack](https://dslc.io/join) to participate.
As we read, we are producing [slides for the book](https://dslc.io/do4ds).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-do4ds](https://dslcio.slack.com/archives/C03SMHQ0RJP) channel on Slack)!

- Cohort 1 (started 2022-10-15, finished 2023-05-27): [meeting videos](https://youtube.com/playlist?list=PL3x6DOfs2NGh_vdoVBZ0Tp3nOrOgY_XIZ)
- Cohort 2 (facilitator: @Olivier Leroy): [Fridays 10am central](https://dslcio.slack.com/archives/C03SMHQ0RJP/p1754224181469239) | [schedule](https://docs.google.com/spreadsheets/d/1a99WLm0v6GsSGEwmo2EJ8F6p_9TFpZ4UWRNwVKCX7RE/edit?usp=sharing) | [meeting videos](https://DSLC.video/do4ds02)

<hr>


## How to Present

This repository is structured as a Quarto website.
To present, follow these instructions:

Do these steps once in RStudio or Positron:

1. [Setup Git and GitHub to work with RStudio](https://github.com/r4ds/bookclub-setup) (click through for detailed, step-by-step instructions; I recommend checking this out even if you're pretty sure you're all set).
2. `usethis::create_from_github("r4ds/bookclub-do4ds")` (cleanly creates your own copy of this repository).

Do these steps each time you present another chapter:

1. Open your project for this book.
2. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion, making sure that you have the latest changes from other contributors; replace `my-chapter` with a descriptive name, ideally).
3. `pak::pak()` (installs any packages used by the book that you don't already have installed).
4. Edit the appropriate chapter file (in `slides/`). Use `#` (section) and `##` (slide) to indicate new slides. If the file is currently `.Rmd`, rename to `.qmd`. You do *not* need to update the `_quarto.yml` index; it automatically finds chapter slide files. Warning: unedited decks might look weird or otherwise not render properly!
5. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
6. Preview your changes! ctrl-shift-k (or command-shift-k) will render the current slide + anything that you haven't rendered before in RStudio or Positron. Please do this to make sure it works before you push your changes up to the main repo! Note: When the site builds on your machine, you'll get some untracked files (`01.qmd` etc in the root directory) and directories (`_site` and `.quarto`). Ignore these files; they're generated during the render, and *should* automatically update when you re-render. If you're having trouble rendering, try deleting old copies of these files/directories on your local machine; sometimes quarto gets "stuck." You might also need to delete something in `_freeze` if things aren't updating properly on something you've edited.
7. Commit your changes (through the command line, using Rstudio's Git tab, or using Positron's Source Control section). The exact message usually isn't important, but something like "Updates to chapter 2 slides" is enough.
8. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready). Note: This will open GitHub in a browser window, so you might want to open a browser and login to GitHub.com before this runs.
9. (If we request changes, make them)
10. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.
11. Now that your local copy is up-to-date with the main repo, you need to update your remote fork. Run `gert::git_push("origin")` or click the `Push` button on the `Git` tab of Rstudio.

When your PR is checked into the main branch, the quarto site will rebuild, adding your slides to [this site](https://dslc.io/do4ds).
