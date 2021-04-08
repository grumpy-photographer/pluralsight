on.error <- function() {
  if (interactive()) {
    recover()
  } else {
    dump.frames(to.file = TRUE, include.GlobalEnv = TRUE)
  }
}

options(error = on.error)

print("Top 10 Heros Script")
print(format(Sys.time(), "%Y-%m-%d %H:%M"))

if (interactive()) {
  prompt.user <- function() {
    users.selection <- NA

    while (is.na(users.selection)) {
      cat(
        "===================
    Please specifiy which file to load by option number:
    1 - CSV
    2 - Tab delimited text
    3 - XLSX
    4 - JSON
    5 - EXIT SCRIPT
    ==================="
      )
      users.selection <-
        as.numeric(readline(prompt = "\nOption: "))

      if (is.na(users.selection)) {
        print("Invalid option!")
      }
    }
    return(users.selection)
  }

  file.type <- prompt.user()
} else {
  print("Running Non-interactively")

  sink(paste(
    "top_10_heros_",
    format(Sys.time(), "%Y%m%d_%H%M"),
    ".log",
    sep = ""
  ))

  file.type <- 1
}

print(paste("File type selected:", file.type))

data <- new.env()

load.data <- function() {
  if (file.type == 5) {
    stop("User aborted.")
  } else if (file.type == 1) {
    print("Loading CSV file")
    data$parts <- read.csv("BattleParticipants.csv")
  } else if (user.input$file.type == 2) {
    print("Loading Tab Delimited file")
    data$parts <- read.table("BattleParticipans.txt", header = TRUE)
  } else if (user.input$file.type == 3) {
    #install.packages("readxl")
    print("Loading XLSX file")
    library("readxl")
    data$parts <- read_excel("BattleParticipants.xlsx")
  } else if (user.input$file.type == 4) {
    #install.packages("rjson")
    print("Loading JSON file")
    library("rjson")
    data$parts <- fromJSON(file = "BattleParticipants.json")
  }
}

load.data()

print("Data loaded.")

battle.parts.by.user <- aggregate(
  x = data$parts,
  by = list(unique.users = data$parts$UserName),
  FUN = length
)

total.users <- nrow(battle.parts.by.user)

battle.parts.by.hero <- aggregate(
  x = data$parts,
  by = list(unique.hero = data$parts$HeroName),
  FUN = length
)

battle.parts.by.hero <-
  battle.parts.by.hero[order(battle.parts.by.hero$battle_id, decreasing = TRUE),]

battle.parts.by.hero <- head(battle.parts.by.hero, n = 10)

plot.title <- paste("Top 10 Heros",
                    "(Total user count:",
                    total.users, ")")

print("Creating `exports` directory.")
dir.create("exports")

print("Exporting PDF results.")
pdf("./reports/top_10_heros.pdf")

barplot(
  battle.parts.by.hero$HeroName,
  names.arg = battle.parts.by.hero$unique.heros,
  main = plot.title,
  cex.names = .50,
  xlab = "Heros",
  ylab = "User Count"
)

barplot(
  battle.parts.by.hero$HeroName,
  names.arg = battle.parts.by.hero$unique.heros,
  main = plot.title,
  cex.names = .50,
  xlab = "Heros",
  ylab = "User Count",
  horiz = TRUE
)

dev.off()

print("Exporting data files.")
write.csv(battle.parts.by.hero, "./exports/top_10_heros.csv")
write.table(battle.parts.by.hero,
            "./exports/top_10_heros.txt")

colnames(battle.parts.by.hero) = NULL
cat("\n", plot.title)
print(battle.parts.by.hero[, 1:2], row.names = F)
