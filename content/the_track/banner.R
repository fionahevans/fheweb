setwd("C:/Users/fiona/Documents/Writing/www/fheweb/content/the_track")

library(magick)

# Read images
img1 <- image_read("cover.jpg")
img2 <- image_read("kalamunda.jpg")
img3 <- image_read("collie.png")
img4 <- image_read("dwellingup.png")

# Combine images horizontally (stack = FALSE)
combined_h <- image_append(c(image_resize(img1, "x300"), 
                             image_resize(img2, "x300"),
                             image_resize(img3, "x300"),
                             image_resize(img4, "x300")), 
                           stack = FALSE)

# Display and save
print(combined_h)
image_write(combined_h, "combined_image.jpg")
