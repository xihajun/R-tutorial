# When I delect some data from dataset, the factor doesn't change. So I need to impliment this code to reset the factor.
connection_events$label <- factor(connection_events$label)

# From: https://stackoverflow.com/questions/1195826/drop-factor-levels-in-a-subsetted-data-frame
