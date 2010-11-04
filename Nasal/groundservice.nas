# Ground Service

# =======
# Service
# =======
print("Ativando servico de solo!");

servicedevice = "/controls/groundservice/cargo/active";
props.Node.new(servicedevice);
setprop(servicedevice, "false");

servicecargoonoff = func {
    servicedevice = "/controls/groundservice/cargo/active";
    servicedevicecompl = "/controls/groundservice/pax/active";
    
    valueservice = getprop(servicedevice);
    
    if(valueservice == 0 or valueservice == nil) {
    	setprop(servicedevice, "true" );
    	setprop(servicedevicecompl, "false" );
    } else {
    	setprop(servicedevice, "false" );
	}
}


servicedevice = "/controls/groundservice/pax/active";
props.Node.new(servicedevice);
setprop(servicedevice, "false");

servicepaxonoff = func {
    servicedevice = "/controls/groundservice/pax/active";
    servicedevicecompl = "/controls/groundservice/cargo/active";
    
    valueservice = getprop(servicedevice);
    
    if(valueservice == 0 or valueservice == nil) {
    	setprop(servicedevice, "true" );
    	setprop(servicedevicecompl, "false" );
    } else {
    	setprop(servicedevice, "false" );
	}
}

