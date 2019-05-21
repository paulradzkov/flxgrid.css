# Grunt Configuration
# http://gruntjs.com/getting-started#an-example-gruntfile

module.exports = (grunt) ->

	# Initiate the Grunt configuration.
	grunt.initConfig

		# Allow use of the package.json data.
		pkg: grunt.file.readJSON('package.json')

		# docpad variables
		docpad:
			files: [ './src/**/*.*' ]
			out: ['out']

		# optimize images if possible
		imagemin:
			src:
				options:
					optimizationLevel: 3
				files: [
					expand: true
					cwd: './src/raw/img/'
					src: ['**/*.{png,jpg,jpeg,gif}']
					dest: './src/raw/img/'
				]

		# clean out dir
		clean:
			options:
				force: true
			out: ['<%= docpad.out %>']

		# compile less
		less:
			development:
				options:
					sourceMap: true
				files: [
					"out/flxgrid.css": "flxgrid.less"
					"flxgrid.css": "flxgrid.less"
				]
			site:
				options:
					sourceMap: true
				files: [
					"out/css/template.css": "src/raw/css/template.less"
				]

		postcss:
			options:
				# map: true # inline sourcemaps

				# or
				map:
					inline: false # save all sourcemaps as separate files...
					annotation: 'out/css/' # ...to the specified directory

				processors: [
					require('autoprefixer')({browsers: [
						'last 2 versions'
						'Explorer >= 10'
					]}) # add vendor prefixes
				]
			site:
				src: 'out/*.css'
			dist:
				src: 'flxgrid.css'

		# track changes
		watch:
			out:
				files: ['<%= docpad.out %>/**/*']
				options:
					livereload: true
			less:
				files: [
					'flxgrid.less'
					'src/raw/css/template.less'
				]
				tasks: [
					'less:development'
					'less:site'
					'postcss:site'
					'notify:less'
				]

		# start server
		connect:
			server:
				options:
					port: 9778
					hostname: '*'
					base: '<%= docpad.out %>'
					livereload: true
					# open: true

		# generate development
		shell:
			deploy:
				options:
					stdout: true
				command: 'docpad deploy-ghpages --env static'
			docpadrun:
				options:
					stdout: true
					async: true
				command: 'docpad run'

	# measures the time each task takes
	require('time-grunt')(grunt);

	# Build the available Grunt tasks.
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-imagemin'
	grunt.loadNpmTasks 'grunt-contrib-copy'
	grunt.loadNpmTasks 'grunt-contrib-less'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-connect'
	grunt.loadNpmTasks 'grunt-shell-spawn'
	grunt.loadNpmTasks 'grunt-newer'
	grunt.loadNpmTasks 'grunt-postcss'
	grunt.loadNpmTasks 'grunt-notify'

	# Register our Grunt tasks.
	grunt.registerTask 'deploy',			 ['clean', 'less', 'postcss', 'shell:deploy' ]
	grunt.registerTask 'run',				 ['less', 'postcss', 'shell:docpadrun', 'watch:less']
	grunt.registerTask 'default',			 ['run']
