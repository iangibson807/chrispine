linewidth = 60
contents = [['page 1', 'page 72','page 118'],['Chapter 1:','Chapter 2:', 'Chapter 3:'],['Numbers', 'Letters', 'Variables'],]

table =contents.each.sort do |x|
	[x[1], x[2], x[0]]
column = linewidth/3
table.each do |t|
 puts t[0].ljust(column) + t[1].center(column) + t[2].rjust(column)
end
end