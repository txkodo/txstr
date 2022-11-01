
data modify storage tasx: return.char set from storage tasx: var.split[-1]
data modify storage tasx: return.state set from storage tasx: var.result

function atasx:api/end
