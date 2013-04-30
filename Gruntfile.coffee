module.exports = (grunt) =>
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'

		jqueryui:
			version: '1.10.2'

		curl:
			'jquery-ui-<%= jqueryui.version %>.zip': 'http://jqueryui.com/resources/download/jquery-ui-<%= jqueryui.version %>.zip'

		unzip:
			'jquery-ui': 'jquery-ui-<%= jqueryui.version %>.zip'

		clean:
			zip:
				src: 'jquery-ui-<%= jqueryui.version %>.zip'


	grunt.loadNpmTasks 'grunt-curl'
	grunt.loadNpmTasks 'grunt-zip'
	grunt.loadNpmTasks 'grunt-shell'
	grunt.loadNpmTasks 'grunt-contrib-clean'

	grunt.registerTask 'default', ['curl', 'unzip', 'clean:zip']
