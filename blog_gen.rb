require 'erb'
require 'kramdown'
require 'fileutils'
require 'date'


class BlogGenerator 
    def initialize(input_dir ,output_dir, template_dir)
        @input_dir = input_dir
        @output_dir = output_dir
        @template_dir = template_dir
        @posts = []
    end

    def generate 
        load_posts
        generate_posts
        generate_index
        copy_assets
    end

    private 

    def load_posts
        Dir.glob(File.join(@input_dir, '**/*.md')).each do |md_file|
            content = File.read(md_file)
            html_content = kramdown::Document.new(content).to_html

            #extract metadata (if any) -> format: <--- key : value --->
            metadata = {}
            content.scan(/<!--\s*(\w+):\s*(.+?)\s*-->/).each do |key, value|
                metadata[key.downcase.to_sym] = value
          
        end

        relative_path = md_file.