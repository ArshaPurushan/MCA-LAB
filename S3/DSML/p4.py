#bokeh functions


from bokeh.plotting import figure, curdoc
from bokeh.layouts import column
from bokeh.models import Slider, ColumnDataSource
import numpy as np

# Create a ColumnDataSource to hold the data
source = ColumnDataSource(data=dict(x=[], y=[]))

# Create a figure object
plot = figure(title="Sine Wave", x_axis_label='x', y_axis_label='y')

# Add a line glyph to the plot
line = plot.line(x='x', y='y', source=source, line_width=2)

# Define a callback function to update the plot
def update_plot(attr, old, new):
    # Get the value of the slider
    amplitude = slider.value
    
    # Generate new data
    x = np.linspace(0, 4 * np.pi, 100)
    y = amplitude * np.sin(x)
    
    # Update the ColumnDataSource
    source.data = dict(x=x, y=y)

# Create a slider widget
slider = Slider(start=0, end=10, value=1, step=0.1, title="Amplitude")

# Attach the callback function to the slider
slider.on_change('value', update_plot)

# Initialize the plot with default data
update_plot(None, None, None)

# Arrange the layout and add it to the current document
layout = column(slider, plot)
curdoc().add_root(layout)
