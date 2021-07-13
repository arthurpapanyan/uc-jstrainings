module.exports = {
	testTimeout: 20000,
	transformIgnorePatterns: ["/node_modules/"],
	testEnvironment: "node",
	transform: {
		"^.+\\.js?$": "babel-jest",
	},
};
