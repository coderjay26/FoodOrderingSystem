; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [220 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 7
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 45
	i64 45886493525149769, ; 2: Xamarin.Forms.Material => 0xa30585d28e0849 => 80
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 14
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 35
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 67
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 68
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 54
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 104
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 48
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 44
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 102
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 82
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 109
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 84
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 30
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 92
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 28
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 56
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 49
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 16
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 29
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 67
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 26
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 55
	i64 1984538867944326539, ; 26: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 8
	i64 1986553961460820075, ; 27: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 77
	i64 2133195048986300728, ; 28: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 16
	i64 2136356949452311481, ; 29: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 60
	i64 2148470725164780602, ; 30: FFImageLoading.Svg.Forms => 0x1dd0e6bdcfc5cc3a => 9
	i64 2165725771938924357, ; 31: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 33
	i64 2262844636196693701, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 44
	i64 2284400282711631002, ; 33: System.Web.Services => 0x1fb3d1f42fd4249a => 108
	i64 2329709569556905518, ; 34: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 52
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 39
	i64 2479423007379663237, ; 36: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 72
	i64 2497223385847772520, ; 37: System.Runtime => 0x22a7eb7046413568 => 22
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 25
	i64 2592350477072141967, ; 39: System.Xml.dll => 0x23f9e10627330e8f => 23
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 15
	i64 2694427813909235223, ; 41: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 64
	i64 2863324215353042462, ; 42: FFImageLoading.Forms => 0x27bc92340ce4661e => 6
	i64 2960931600190307745, ; 43: Xamarin.Forms.Core => 0x2917579a49927da1 => 79
	i64 3017704767998173186, ; 44: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 84
	i64 3289520064315143713, ; 45: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 51
	i64 3303437397778967116, ; 46: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 27
	i64 3311221304742556517, ; 47: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 21
	i64 3493805808809882663, ; 48: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 70
	i64 3522470458906976663, ; 49: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 69
	i64 3531994851595924923, ; 50: System.Numerics => 0x31042a9aade235bb => 20
	i64 3571415421602489686, ; 51: System.Runtime.dll => 0x319037675df7e556 => 22
	i64 3716579019761409177, ; 52: netstandard.dll => 0x3393f0ed5c8c5c99 => 100
	i64 3727469159507183293, ; 53: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 66
	i64 3772598417116884899, ; 54: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 45
	i64 3957523575200120035, ; 55: FoodOrderingSystem.Android => 0x36ebf2b94a097ce3 => 0
	i64 4525561845656915374, ; 56: System.ServiceModel.Internals => 0x3ece06856b710dae => 86
	i64 4636684751163556186, ; 57: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 74
	i64 4782108999019072045, ; 58: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 32
	i64 4794310189461587505, ; 59: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 25
	i64 4795410492532947900, ; 60: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 69
	i64 5081566143765835342, ; 61: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 62: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 63: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 81
	i64 5203618020066742981, ; 64: Xamarin.Essentials => 0x4836f704f0e652c5 => 78
	i64 5205316157927637098, ; 65: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 58
	i64 5348796042099802469, ; 66: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 59
	i64 5376510917114486089, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 72
	i64 5408338804355907810, ; 68: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 71
	i64 5446034149219586269, ; 69: System.Diagnostics.Debug => 0x4b94333452e150dd => 91
	i64 5451019430259338467, ; 70: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 38
	i64 5507995362134886206, ; 71: System.Core.dll => 0x4c705499688c873e => 18
	i64 5692067934154308417, ; 72: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 76
	i64 5757522595884336624, ; 73: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 36
	i64 5814345312393086621, ; 74: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 64
	i64 5896680224035167651, ; 75: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 53
	i64 6085203216496545422, ; 76: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 82
	i64 6086316965293125504, ; 77: FormsViewGroup.dll => 0x5476f10882baef80 => 12
	i64 6319713645133255417, ; 78: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 54
	i64 6394126959954886299, ; 79: FoodOrderingSystem => 0x58bc8097b0dbfe9b => 11
	i64 6401687960814735282, ; 80: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 52
	i64 6504860066809920875, ; 81: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 33
	i64 6548213210057960872, ; 82: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 42
	i64 6591024623626361694, ; 83: System.Web.Services.dll => 0x5b7805f9751a1b5e => 108
	i64 6659513131007730089, ; 84: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 48
	i64 6671798237668743565, ; 85: SkiaSharp => 0x5c96fd260152998d => 17
	i64 6876862101832370452, ; 86: System.Xml.Linq => 0x5f6f85a57d108914 => 24
	i64 6894844156784520562, ; 87: System.Numerics.Vectors => 0x5faf683aead1ad72 => 21
	i64 7036436454368433159, ; 88: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 50
	i64 7103753931438454322, ; 89: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 47
	i64 7270811800166795866, ; 90: System.Linq => 0x64e71ccf51a90a5a => 97
	i64 7338192458477945005, ; 91: System.Reflection => 0x65d67f295d0740ad => 88
	i64 7488575175965059935, ; 92: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 24
	i64 7489048572193775167, ; 93: System.ObjectModel => 0x67ee71ff6b419e3f => 98
	i64 7635363394907363464, ; 94: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 79
	i64 7637365915383206639, ; 95: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 78
	i64 7654504624184590948, ; 96: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7820441508502274321, ; 97: System.Data => 0x6c87ca1e14ff8111 => 101
	i64 7836164640616011524, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 28
	i64 8044118961405839122, ; 99: System.ComponentModel.Composition => 0x6fa2739369944712 => 107
	i64 8064050204834738623, ; 100: System.Collections.dll => 0x6fe942efa61731bf => 87
	i64 8083354569033831015, ; 101: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 51
	i64 8103644804370223335, ; 102: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 103
	i64 8113615946733131500, ; 103: System.Reflection.Extensions => 0x70995ab73cf916ec => 3
	i64 8167236081217502503, ; 104: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 13
	i64 8185542183669246576, ; 105: System.Collections => 0x7198e33f4794aa70 => 87
	i64 8290740647658429042, ; 106: System.Runtime.Extensions => 0x730ea0b15c929a72 => 94
	i64 8398329775253868912, ; 107: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 37
	i64 8400357532724379117, ; 108: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 63
	i64 8601935802264776013, ; 109: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 71
	i64 8626175481042262068, ; 110: Java.Interop => 0x77b654e585b55834 => 13
	i64 8639588376636138208, ; 111: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 62
	i64 8684531736582871431, ; 112: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 106
	i64 9096485168583251715, ; 113: FoodOrderingSystem.dll => 0x7e3d3510ca039703 => 11
	i64 9114191852432800567, ; 114: FFImageLoading.dll => 0x7e7c1d3363043b37 => 5
	i64 9238306115887712111, ; 115: FFImageLoading.Forms.dll => 0x80350e773bce476f => 6
	i64 9290408134796603763, ; 116: Xamarin.Forms.Material.dll => 0x80ee28f9d4f37173 => 80
	i64 9312692141327339315, ; 117: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 76
	i64 9324707631942237306, ; 118: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 29
	i64 9584643793929893533, ; 119: System.IO.dll => 0x85037ebfbbd7f69d => 90
	i64 9659729154652888475, ; 120: System.Text.RegularExpressions => 0x860e407c9991dd9b => 96
	i64 9662334977499516867, ; 121: System.Numerics.dll => 0x8617827802b0cfc3 => 20
	i64 9678050649315576968, ; 122: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 39
	i64 9711637524876806384, ; 123: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 59
	i64 9808709177481450983, ; 124: Mono.Android.dll => 0x881f890734e555e7 => 14
	i64 9825649861376906464, ; 125: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 36
	i64 9834056768316610435, ; 126: System.Transactions.dll => 0x8879968718899783 => 102
	i64 9998632235833408227, ; 127: Mono.Security => 0x8ac2470b209ebae3 => 109
	i64 10038780035334861115, ; 128: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 129: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 42
	i64 10360651442923773544, ; 130: System.Text.Encoding => 0x8fc86d98211c1e68 => 95
	i64 10376576884623852283, ; 131: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 70
	i64 10430153318873392755, ; 132: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 40
	i64 10566960649245365243, ; 133: System.Globalization.dll => 0x92a562b96dcd13fb => 99
	i64 10714184849103829812, ; 134: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 94
	i64 10785150219063592792, ; 135: System.Net.Primitives => 0x95ac8cfb68830758 => 92
	i64 10847732767863316357, ; 136: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 30
	i64 11023048688141570732, ; 137: System.Core => 0x98f9bc61168392ac => 18
	i64 11037814507248023548, ; 138: System.Xml => 0x992e31d0412bf7fc => 23
	i64 11122995063473561350, ; 139: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 77
	i64 11162124722117608902, ; 140: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 75
	i64 11340910727871153756, ; 141: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 41
	i64 11392833485892708388, ; 142: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 65
	i64 11529969570048099689, ; 143: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 75
	i64 11578238080964724296, ; 144: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 50
	i64 11580057168383206117, ; 145: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 26
	i64 11597940890313164233, ; 146: netstandard => 0xa0f429ca8d1805c9 => 100
	i64 11672361001936329215, ; 147: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 47
	i64 11743665907891708234, ; 148: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 89
	i64 12123043025855404482, ; 149: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 3
	i64 12137774235383566651, ; 150: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 73
	i64 12451044538927396471, ; 151: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 46
	i64 12466513435562512481, ; 152: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 57
	i64 12487638416075308985, ; 153: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 43
	i64 12538491095302438457, ; 154: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 34
	i64 12550732019250633519, ; 155: System.IO.Compression => 0xae2d28465e8e1b2f => 105
	i64 12700543734426720211, ; 156: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 35
	i64 12708238894395270091, ; 157: System.IO => 0xb05cbbf17d3ba3cb => 90
	i64 12963446364377008305, ; 158: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 104
	i64 13370592475155966277, ; 159: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 160: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 73
	i64 13404347523447273790, ; 161: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 37
	i64 13454009404024712428, ; 162: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 85
	i64 13491513212026656886, ; 163: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 31
	i64 13572454107664307259, ; 164: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 66
	i64 13625875842063280493, ; 165: FoodOrderingSystem.Android.dll => 0xbd18d5e2a7c2296d => 0
	i64 13647894001087880694, ; 166: System.Data.dll => 0xbd670f48cb071df6 => 101
	i64 13959074834287824816, ; 167: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 46
	i64 13967638549803255703, ; 168: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 81
	i64 14124974489674258913, ; 169: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 34
	i64 14125464355221830302, ; 170: System.Threading.dll => 0xc407bafdbc707a9e => 93
	i64 14164783236351491542, ; 171: FFImageLoading.Svg.Platform.dll => 0xc4936b4e23237dd6 => 10
	i64 14172845254133543601, ; 172: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 60
	i64 14252460695396124839, ; 173: FFImageLoading.Svg.Forms.dll => 0xc5cae97d5c4d88a7 => 9
	i64 14261073672896646636, ; 174: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 65
	i64 14327695147300244862, ; 175: System.Reflection.dll => 0xc6d632d338eb4d7e => 88
	i64 14486659737292545672, ; 176: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 53
	i64 14644440854989303794, ; 177: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 58
	i64 14792063746108907174, ; 178: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 85
	i64 14852515768018889994, ; 179: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 41
	i64 14987728460634540364, ; 180: System.IO.Compression.dll => 0xcfff1ba06622494c => 105
	i64 14988210264188246988, ; 181: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 43
	i64 15076659072870671916, ; 182: System.ObjectModel.dll => 0xd13b0d8c1620662c => 98
	i64 15133485256822086103, ; 183: System.Linq.dll => 0xd204f0a9127dd9d7 => 97
	i64 15370334346939861994, ; 184: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 40
	i64 15398511348637731642, ; 185: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 7
	i64 15404322903526314552, ; 186: FFImageLoading.Svg.Platform => 0xd5c72610ae199238 => 10
	i64 15526743539506359484, ; 187: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 95
	i64 15582737692548360875, ; 188: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 56
	i64 15609085926864131306, ; 189: System.dll => 0xd89e9cf3334914ea => 19
	i64 15777549416145007739, ; 190: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 68
	i64 15810740023422282496, ; 191: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 83
	i64 15817206913877585035, ; 192: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 89
	i64 16154507427712707110, ; 193: System => 0xe03056ea4e39aa26 => 19
	i64 16324796876805858114, ; 194: SkiaSharp.dll => 0xe28d5444586b6342 => 17
	i64 16565028646146589191, ; 195: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 107
	i64 16621146507174665210, ; 196: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 38
	i64 16677317093839702854, ; 197: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 63
	i64 16822611501064131242, ; 198: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 103
	i64 16833383113903931215, ; 199: mscorlib => 0xe99c30c1484d7f4f => 15
	i64 16890310621557459193, ; 200: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 96
	i64 17024911836938395553, ; 201: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 27
	i64 17031351772568316411, ; 202: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 61
	i64 17037200463775726619, ; 203: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 49
	i64 17544493274320527064, ; 204: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 32
	i64 17627500474728259406, ; 205: System.Globalization => 0xf4a176498a351f4e => 99
	i64 17643123953373031521, ; 206: FFImageLoading => 0xf4d8f7c220fc2c61 => 5
	i64 17685921127322830888, ; 207: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 91
	i64 17704177640604968747, ; 208: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 57
	i64 17710060891934109755, ; 209: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 55
	i64 17882897186074144999, ; 210: FormsViewGroup => 0xf82cd03e3ac830e7 => 12
	i64 17892495832318972303, ; 211: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 83
	i64 17928294245072900555, ; 212: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 106
	i64 17947624217716767869, ; 213: FFImageLoading.Platform => 0xf912c522ab34bc7d => 8
	i64 18025913125965088385, ; 214: System.Threading => 0xfa28e87b91334681 => 93
	i64 18116111925905154859, ; 215: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 31
	i64 18121036031235206392, ; 216: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 61
	i64 18129453464017766560, ; 217: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 86
	i64 18305135509493619199, ; 218: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 62
	i64 18380184030268848184 ; 219: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 74
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [220 x i32] [
	i32 7, i32 45, i32 80, i32 14, i32 35, i32 67, i32 68, i32 54, ; 0..7
	i32 104, i32 48, i32 44, i32 102, i32 82, i32 109, i32 84, i32 30, ; 8..15
	i32 4, i32 92, i32 28, i32 56, i32 49, i32 16, i32 29, i32 67, ; 16..23
	i32 26, i32 55, i32 8, i32 77, i32 16, i32 60, i32 9, i32 33, ; 24..31
	i32 44, i32 108, i32 52, i32 39, i32 72, i32 22, i32 25, i32 23, ; 32..39
	i32 15, i32 64, i32 6, i32 79, i32 84, i32 51, i32 27, i32 21, ; 40..47
	i32 70, i32 69, i32 20, i32 22, i32 100, i32 66, i32 45, i32 0, ; 48..55
	i32 86, i32 74, i32 32, i32 25, i32 69, i32 2, i32 2, i32 81, ; 56..63
	i32 78, i32 58, i32 59, i32 72, i32 71, i32 91, i32 38, i32 18, ; 64..71
	i32 76, i32 36, i32 64, i32 53, i32 82, i32 12, i32 54, i32 11, ; 72..79
	i32 52, i32 33, i32 42, i32 108, i32 48, i32 17, i32 24, i32 21, ; 80..87
	i32 50, i32 47, i32 97, i32 88, i32 24, i32 98, i32 79, i32 78, ; 88..95
	i32 1, i32 101, i32 28, i32 107, i32 87, i32 51, i32 103, i32 3, ; 96..103
	i32 13, i32 87, i32 94, i32 37, i32 63, i32 71, i32 13, i32 62, ; 104..111
	i32 106, i32 11, i32 5, i32 6, i32 80, i32 76, i32 29, i32 90, ; 112..119
	i32 96, i32 20, i32 39, i32 59, i32 14, i32 36, i32 102, i32 109, ; 120..127
	i32 1, i32 42, i32 95, i32 70, i32 40, i32 99, i32 94, i32 92, ; 128..135
	i32 30, i32 18, i32 23, i32 77, i32 75, i32 41, i32 65, i32 75, ; 136..143
	i32 50, i32 26, i32 100, i32 47, i32 89, i32 3, i32 73, i32 46, ; 144..151
	i32 57, i32 43, i32 34, i32 105, i32 35, i32 90, i32 104, i32 4, ; 152..159
	i32 73, i32 37, i32 85, i32 31, i32 66, i32 0, i32 101, i32 46, ; 160..167
	i32 81, i32 34, i32 93, i32 10, i32 60, i32 9, i32 65, i32 88, ; 168..175
	i32 53, i32 58, i32 85, i32 41, i32 105, i32 43, i32 98, i32 97, ; 176..183
	i32 40, i32 7, i32 10, i32 95, i32 56, i32 19, i32 68, i32 83, ; 184..191
	i32 89, i32 19, i32 17, i32 107, i32 38, i32 63, i32 103, i32 15, ; 192..199
	i32 96, i32 27, i32 61, i32 49, i32 32, i32 99, i32 5, i32 91, ; 200..207
	i32 57, i32 55, i32 12, i32 83, i32 106, i32 8, i32 93, i32 31, ; 208..215
	i32 61, i32 86, i32 62, i32 74 ; 216..219
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
