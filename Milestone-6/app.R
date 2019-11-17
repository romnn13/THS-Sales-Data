library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    navbarPage("Navbar!",
               tabPanel("About", 
                        p("Harvard Student Agencies is the largest student run business in the world. With over 650 undergraduate employees,
                        this nonprofit is made up of 13 different agencies, each an entirely different business unit. One such agency, comprising 
                        the largest segment of HSA's revenue, is called the Harvard Shop. Acquired by HSA in the early 2000s, The Harvard Shop
                        is composed of three different brick and mortar locations, as well as an eccomerce platform. The 
                        Harvard Shop utilizes two different platforms for inventory management and sales tracking. Each of the stores
                        utilizes Vend, a point of sale system. Online, shopify is the ecommerce platform used. The use of these two platforms
                        allows for a needed segmentation between physical and online sales. It is important to note that while there are two
                        sales platforms utilized, only Vend is used in order to track inventory."),
                        
                        p("In recent years the retail world has begun to see a shift in terms of the approach taken to procurement, stock, and inventory
                        management as a result of the data revolution. The Harvard Shop and HSA have only just initiated their shift into this new era
                        of analytics. As they do, this project is meant to serve as a starting point. Identifying areas that have been overlooked and seeing
                        if there are any operational conclusions that can be drawn from the data.")
               ),
               tabPanel("Plot", mainPanel(
                   plotOutput("image"),
                   p("test")
               )
               
               
               )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$image <- renderPlot({
        readRDS(file='plot.rds')
        })
}

# Run the application 
shinyApp(ui = ui, server = server)