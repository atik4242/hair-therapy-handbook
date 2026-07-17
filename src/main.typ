#import "config.typ": handbook
#import "styles/typography.typ": typography
#import "styles/layout.typ": document-layout
#import "chapters/cover.typ": cover
#import "chapters/introduction.typ": introduction
#import "chapters/weekly-plan.typ": weekly-plan
#import "chapters/dermastamp-checklist.typ": dermastamp-checklist
#import "chapters/monthly-review.typ": monthly-review
#import "chapters/notes.typ": notes

#show: document-layout
#show: typography

#cover()

#outline(title: [Inhalt], depth: 2, indent: auto)
#pagebreak()

#if handbook.chapters.introduction [#introduction() #pagebreak()]
#if handbook.chapters.weekly_plan [#weekly-plan() #pagebreak() #dermastamp-checklist() #pagebreak()]
#if handbook.chapters.monthly_review [#monthly-review() #pagebreak()]
#if handbook.chapters.notes [#notes()]
