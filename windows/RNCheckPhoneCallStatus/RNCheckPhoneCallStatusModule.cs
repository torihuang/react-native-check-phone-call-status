using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNCheckPhoneCallStatus
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCheckPhoneCallStatusModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCheckPhoneCallStatusModule"/>.
        /// </summary>
        internal RNCheckPhoneCallStatusModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCheckPhoneCallStatus";
            }
        }
    }
}
