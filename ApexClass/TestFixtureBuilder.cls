public class {{ api_name }} implements TestFixtureBuilder {

	public final String CHANGE_ME = 'CHANGE_ME';

	private final String FIXTURE_QUERY_CLASS = '{{ object_name }}';
	private final String FIXTURE_QUERY_FIELDS = 'Name';		// TODO Add more fields as needed for the class

	public SObject build(TestObjScenario scenario) {
		// Add instance scenarios here as needed for test cases
		return scenario.equals(CHANGE_ME) ? buildSample()
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

	private {{ object_name }} buildSample() {
		{{ object_name }} obj = new {{ object_name }}();
    	obj.Name = 'Sample {{ object_name }}';
    	return obj;
	}
}