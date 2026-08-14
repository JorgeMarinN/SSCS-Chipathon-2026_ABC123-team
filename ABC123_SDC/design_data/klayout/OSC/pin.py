import klayout.db as pya

# Load the PDK technology and library (GF180MCU)
layout = pya.Layout()
layout.read("VCO_scale.gds")  # path to GF180MCU PDK .gds library

# Select a cell where the pin will be placed (or create a new one)
top_cell = layout.create_cell("TOP")

# Define the technology layers for GF180MCU pins (example layers)
pin_layer_index = layout.layer(pya.LayerInfo(10, 0))  # 10 is an example layer number for pins

# Define the coordinates and pin size (in database units, usually nm scaled by PDK)
pin_x = 10
pin_y = 20
pin_width = 20
pin_height = 10

# Create the pin shape as a rectangle
pin_box = pya.Box(pin_x, pin_y, pin_x + pin_width, pin_y + pin_height)
top_cell.shapes(pin_layer_index).insert(pin_box)

# Optionally, add a pin label
text_layer_index = layout.layer(pya.LayerInfo(99, 0))  # text layer for labels
pin_name = "Vcont"
pin_label = pya.Text(pin_name, pya.Trans(pya.Point(pin_x + pin_width//2, pin_y + pin_height//2)))
top_cell.shapes(text_layer_index).insert(pin_label)

# Save the modified layout
layout.write("VCO_scale.gds")
