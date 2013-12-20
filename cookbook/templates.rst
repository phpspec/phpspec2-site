Templates
=========

PhpSpec can generate for you class snippets that will significantly improve your
development workflow. By default, those templates are really simple and will
match 90% of your needs.

However in some cases, it'll be usefull to customize those templates by providing
ones that suits your project requirement (i.e.: Adding the licence in the header
of your files).

Resolution
----------

It exists 3 different templates that PhpSpec will try to resolve:
  - specification
  - class
  - method

PhpSpec follows this resolving order:
   1. Inside ``{project_directory}/.phpspec/{template_name}.tpl``
   2. Inside ``{home_directory}/.phpspec/{template_name}.tpl``
   3. Use the default template

Parameters
----------

Furthermore, template are given some parameters that you can use as you wish.

**specification**
   - ``%filepath%`` the file path of the class
   - ``%name%``  the specification name
   - ``%namespace%`` the specification namespace
   - ``%subject%`` the name of the class being specified

**class**
   - ``%filepath%`` the file path of the class
   - ``%name%`` the class name
   - ``%namespace%`` the class namespace
   - ``%namespace_block%`` the formated class namespace

**method**
   - ``%name%`` the method name
   - ``%arguments%`` the method arguments
