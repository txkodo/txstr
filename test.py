
a = """{"extra":[{"color":"red","extra":[{"translate":"commands.enchant.failed.entity","with":["[18:15:10] Marker has 3 tags: a, b, c, {\\"extra\\":[{\\"color\\":\\"red\\",\\"extra\\":[{\\"translate\\":\\"commands.enchant.failed.entity\\",\\"with\\":[\\"abcde￿\\"]}],\\"text\\":\\"\\"}],\\"text\\":\\"[18:15:10] \\"}, {\\"extra\\":[{\\"color\\":\\"red\\",\\"extra\\":[{\\"translate\\":\\"commands.enchant.failed.entity\\",\\"with\\":[\\"xyz￿\\"]}],\\"text\\":\\"\\"}],\\"text\\":\\"[18:15:10] \\"}"]}],"text":""}],"text":"[18:15:10] "}"""
b = """{"extra":[{"color":"red","extra":[{"translate":"commands.enchant.failed.entity","with":["[18:15:10] Marker has 3 tags: a, b, c, {\\"extra\\":[{\\"color\\":\\"red\\",\\"extra\\":[{\\"translate\\":\\"commands.enchant.failed.entity\\",\\"with\\":[\\"abcde￿\\"]}],\\"text\\":\\"\\"}],\\"text\\":\\"[18:15:10] \\"}, {\\"extra\\":[{\\"color\\":\\"red\\",\\"extra\\":[{\\"translate\\":\\"commands.enchant.failed.entity\\",\\"with\\":[\\"xyz￿\\"]}],\\"text\\":\\"\\"}],\\"text\\":\\"[18:15:10] \\"}"]}],"text":""}],"text":"[18:15:10] "}"""

print(a == b)