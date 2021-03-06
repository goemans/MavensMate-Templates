public class {{ api_name }} implements TestFixtureBuilder {

	public static final TestObjScenario DEFAULT_OBJ = new TestObjScenario({{ api_name }}.class, 'DEFAULT_OBJ');

	private final String FIXTURE_QUERY_FIELDS = 'Name';		// TODO Add more fields as needed for the class

	public SObject build(TestObjScenario scenario) {
		// Add instance scenarios here as needed for test cases
		return scenario.rootEquals(DEFAULT_OBJ) ? buildDefault()
			: TestScenario.unknown(scenario);
	}

	public List<SObject> build(TestListScenario scenario) {
		// Add list scenarios here as needed for test cases
		return TestScenario.unknown(scenario);
	}

	public String getQueryFields() {
		return FIXTURE_QUERY_FIELDS;
	}

	public Type getFixtureClass() {
		return {{object_name}}.class;
	}

	private {{ object_name }} buildDefault() {
		{{ object_name }} obj = new {{ object_name }}();
    	// obj.Name = 'Sample {{ object_name }}';
    	return obj;
	}
}