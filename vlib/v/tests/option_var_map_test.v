fn abc(a ?map[string]string) ?string {
	return a?['foo']
}

fn abc_2(a ?map[string]string) string {
	return a?['foo']
}

fn test_option_map() {
	mut var4 := ?map[string]string{}
	var4?['foo'] = 'foo'
	assert abc(var4)? == 'foo'
	assert abc_2(var4) == 'foo'
}