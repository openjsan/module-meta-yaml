use Module::Build;

my $build = Module::Build->new(
    module_name        => 'Module::META::YAML',
    license            => 'perl',
    create_makefile_pl => 'passthrough',
    create_readme      => 1,
    requires           => {
                            'Module::Build' => '0.2701',
                            'Module::META' => '0.01',
    },
);
$build->create_build_script;
