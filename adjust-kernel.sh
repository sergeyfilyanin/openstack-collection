if [ -f /usr/share/leapp-repository/repositories/system_upgrade/el7toel8/actors/kernel/checkkerneldrivers/files/removed_drivers.txt ]; then
    for module in pata_acpi floppy; do
        sudo sed -i "/^${module}$/d" /usr/share/leapp-repository/repositories/system_upgrade/el7toel8/actors/kernel/checkkerneldrivers/files/removed_drivers.txt
    done
else
    for module in pata_acpi floppy; do
        jq ". | del(.data[] | select(.driver_name == \"${module}\"))" /etc/leapp/files/device_driver_deprecation_data.json | sudo tee /etc/leapp/files/device_driver_deprecation_data.json_modified
        mv /etc/leapp/files/device_driver_deprecation_data.json_modified /etc/leapp/files/device_driver_deprecation_data.json
    done
fi
