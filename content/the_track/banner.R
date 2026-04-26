setwd("C:/Users/fiona/Documents/Writing/www/fheweb/content/the_track")

library(magick)

# Read images
img1 <- image_read("cover.jpg")
img2 <- image_read("kalamunda.jpg")
img3 <- image_read("collie.png")
img4 <- image_read("dwellingup.png")
img5 <- image_read("albany.jpg")
img6 <- image_read("denmark.jpg")
img7 <- image_read("walpole.jpg")

# Combine images horizontally (stack = FALSE)
combined_h <- image_append(c(image_resize(img1, "x300"), 
                             image_resize(img5, "x300"),
                             image_resize(img6, "x300"),
                             image_resize(img7, "x300")), 
                           stack = FALSE)

# Display and save
print(combined_h)
image_write(combined_h, "combined_image.jpg")



# Combine images for Substack header
combined_w <- image_append(c(image_resize(img1, "x401"), 
                             image_resize(img3, "x401"),
                             image_resize(img4, "x401"),
                             image_resize(img5, "x401")), 
                           stack = FALSE)

# Display and save
print(combined_w)
image_write(combined_w, "combined_image2.jpg")
