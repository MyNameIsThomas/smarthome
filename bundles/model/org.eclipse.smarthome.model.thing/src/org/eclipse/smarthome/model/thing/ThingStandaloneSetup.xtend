/** 
 * Copyright (c) 2014-2017 by the respective copyright holders.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.smarthome.model.thing

import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.resource.IResourceServiceProvider

/** 
 * Initialization support for running Xtext languages
 * without equinox extension registry
 */
class ThingStandaloneSetup extends ThingStandaloneSetupGenerated {
    def static void doSetup() {
        new ThingStandaloneSetup().createInjectorAndDoEMFRegistration()
    }
    
    def static void unregister() {
        EPackage.Registry.INSTANCE.remove("http://www.eclipse.org/smarthome/model/Thing");
        Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().remove("things");
        IResourceServiceProvider.Registry.INSTANCE.getExtensionToFactoryMap().remove("things");
    }
    
}
