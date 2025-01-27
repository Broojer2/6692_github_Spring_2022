 #library(shiny)
 #runExample("01_hello")

 library(shiny)
 

 # Define UI for miles per gallon app ----
 ui <- fluidPage(
   
   # App title ----
   titlePanel("Miles Per Gallon"),
   
   # Sidebar layout with input and output definitions ----
   sidebarLayout(
     
     # Sidebar panel for inputs ----
     sidebarPanel(
       
       # Input: Selector for variable to plot against mpg ----
       selectInput("variable", "Variable:",
                   c("Cylinders" = "cyl",
                     "Transmission" = "am",
                     "Gears" = "gear")),
       
       # Input: Checkbox for whether outliers should be included ----
       checkboxInput("outliers", "Want Outliers?", TRUE)
      
     ),
     
     # Main panel for displaying outputs ----
     mainPanel(
       
       # Output: Formatted text for caption ----
       h3(textOutput("caption")),
       
       # Output: Plot of the requested variable against mpg ----
       plotOutput("mpgPlot"),
       print("There it is")
       
     )
   )
 )
 