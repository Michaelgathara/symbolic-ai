import scallopy

ctx = scallopy.ScallopContext()

ctx.add_relation("Hello", str)

ctx.add_facts("Hello", [("Hello World",)])

ctx.run()

print(list(ctx.relation("Hello")))