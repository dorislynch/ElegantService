using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Elegant.Service.RNElegantService
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNElegantServiceModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNElegantServiceModule"/>.
        /// </summary>
        internal RNElegantServiceModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNElegantService";
            }
        }
    }
}
