rule targets:
    input:
        "results/data/raw/ghcnd_all.tar.gz",
        "results/data/metadata/ghcnd_all_files.txt",
        "results/data/raw/ghcnd-inventory.txt",
        "results/data/raw/ghcnd-stations.txt"


rule get_all_archive:
    input:
        script = "results/scripts/get_ghcn_data.bash"
    output:
        "results/data/raw/ghcnd_all.tar.gz"
    params:
        "ghcnd_all.tar.gz"
    shell:
        """
        {input.script} {params}
        """

rule get_all_filenames:
    input:
        script = "results/scripts/get_ghcn_files.bash",
        archive = "results/data/raw/ghcnd_all.tar.gz"
    output:
        "results/data/metadata/ghcnd_all_files.txt"
    shell:
        """
        {input.script}
        """

rule get_inventory:
    input:
        script = "results/scripts/get_ghcn_data.bash"
    output:
        "results/data/raw/ghcnd-inventory.txt"
    params:
        "ghcnd-inventory.txt"
    shell:
        """
        {input.script} {params}
        """

rule get_station_data:
    input:
        "results/scripts/get_ghcn_data.bash"
    output:
        "results/data/raw/ghcnd-stations.txt"
    params:
        "ghcnd-stations.txt"
    shell:
        """
        {input} {params}
        """