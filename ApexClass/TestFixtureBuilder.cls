public class Test{{ api_name }}Builder implements TestFixtureBuilder {

	public final String DEFAULT = 'DEFAULT';

	private final String FIXTURE_QUERY_CLASS = '{{ object_name }}';
	private final String FIXTURE_QUERY_FIELDS = 'Name';		// TODO Add more fields as needed for the class

	public SObject build(TestObjScenario scenario) {
		// Add instance scenarios here as needed for test cases
		return scenario.equals(DEFAULT) ? buildDefault()
			: TestScenario.unknown(scenario);
	}

	public List<SObject> build(TestListScenario scenario) {
		// Add list scenarios here as needed for test cases
		return TestScenario.unknown(scenario);
	}

	public String getQueryFields() {
		return FIXTURE_QUERY_FIELDS;
	}

	public String getQueryClass() {
		return FIXTURE_QUERY_CLASS;
	}

	private {{ object_name }} buildDefault() {
		{{ object_name }} obj = new {{ object_name }}();
    	obj.Name = 'Default {{ api_name }}';
    	return obj;
	}
}