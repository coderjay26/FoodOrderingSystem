; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [104 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 5
	i64 45886493525149769, ; 1: Xamarin.Forms.Material => 0xa30585d28e0849 => 42
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 12
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 36
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 50
	i64 720058930071658100, ; 5: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 30
	i64 872800313462103108, ; 6: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 28
	i64 996343623809489702, ; 7: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 44
	i64 1000557547492888992, ; 8: Mono.Security.dll => 0xde2b1c9cba651a0 => 51
	i64 1120440138749646132, ; 9: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 46
	i64 1425944114962822056, ; 10: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 22
	i64 1731380447121279447, ; 12: Newtonsoft.Json => 0x18071957e9b889d7 => 14
	i64 1795316252682057001, ; 13: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 23
	i64 1836611346387731153, ; 14: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 36
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 33
	i64 1984538867944326539, ; 16: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 6
	i64 1986553961460820075, ; 17: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 39
	i64 2133195048986300728, ; 18: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 14
	i64 2148470725164780602, ; 19: FFImageLoading.Svg.Forms => 0x1dd0e6bdcfc5cc3a => 7
	i64 2262844636196693701, ; 20: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 28
	i64 2329709569556905518, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 32
	i64 2470498323731680442, ; 22: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 25
	i64 2547086958574651984, ; 23: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 21
	i64 2592350477072141967, ; 24: System.Xml.dll => 0x23f9e10627330e8f => 19
	i64 2624866290265602282, ; 25: mscorlib.dll => 0x246d65fbde2db8ea => 13
	i64 2863324215353042462, ; 26: FFImageLoading.Forms => 0x27bc92340ce4661e => 4
	i64 2960931600190307745, ; 27: Xamarin.Forms.Core => 0x2917579a49927da1 => 41
	i64 3017704767998173186, ; 28: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 46
	i64 3289520064315143713, ; 29: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 31
	i64 3522470458906976663, ; 30: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 37
	i64 3531994851595924923, ; 31: System.Numerics => 0x31042a9aade235bb => 18
	i64 3727469159507183293, ; 32: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 35
	i64 3957523575200120035, ; 33: FoodOrderingSystem.Android => 0x36ebf2b94a097ce3 => 0
	i64 4525561845656915374, ; 34: System.ServiceModel.Internals => 0x3ece06856b710dae => 48
	i64 4794310189461587505, ; 35: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 21
	i64 4795410492532947900, ; 36: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 37
	i64 5142919913060024034, ; 37: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 43
	i64 5203618020066742981, ; 38: Xamarin.Essentials => 0x4836f704f0e652c5 => 40
	i64 5507995362134886206, ; 39: System.Core.dll => 0x4c705499688c873e => 16
	i64 6085203216496545422, ; 40: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 44
	i64 6086316965293125504, ; 41: FormsViewGroup.dll => 0x5476f10882baef80 => 10
	i64 6394126959954886299, ; 42: FoodOrderingSystem => 0x58bc8097b0dbfe9b => 9
	i64 6401687960814735282, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 32
	i64 6548213210057960872, ; 44: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 27
	i64 6659513131007730089, ; 45: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 30
	i64 6671798237668743565, ; 46: SkiaSharp => 0x5c96fd260152998d => 15
	i64 6876862101832370452, ; 47: System.Xml.Linq => 0x5f6f85a57d108914 => 20
	i64 7488575175965059935, ; 48: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 20
	i64 7635363394907363464, ; 49: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 41
	i64 7637365915383206639, ; 50: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 40
	i64 7654504624184590948, ; 51: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7820441508502274321, ; 52: System.Data => 0x6c87ca1e14ff8111 => 49
	i64 7836164640616011524, ; 53: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 22
	i64 8083354569033831015, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 31
	i64 8167236081217502503, ; 55: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 11
	i64 8626175481042262068, ; 56: Java.Interop => 0x77b654e585b55834 => 11
	i64 9096485168583251715, ; 57: FoodOrderingSystem.dll => 0x7e3d3510ca039703 => 9
	i64 9114191852432800567, ; 58: FFImageLoading.dll => 0x7e7c1d3363043b37 => 3
	i64 9238306115887712111, ; 59: FFImageLoading.Forms.dll => 0x80350e773bce476f => 4
	i64 9290408134796603763, ; 60: Xamarin.Forms.Material.dll => 0x80ee28f9d4f37173 => 42
	i64 9324707631942237306, ; 61: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 23
	i64 9662334977499516867, ; 62: System.Numerics.dll => 0x8617827802b0cfc3 => 18
	i64 9678050649315576968, ; 63: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 25
	i64 9808709177481450983, ; 64: Mono.Android.dll => 0x881f890734e555e7 => 12
	i64 9998632235833408227, ; 65: Mono.Security => 0x8ac2470b209ebae3 => 51
	i64 10038780035334861115, ; 66: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 67: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 27
	i64 10430153318873392755, ; 68: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 26
	i64 11023048688141570732, ; 69: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 70: System.Xml => 0x992e31d0412bf7fc => 19
	i64 11122995063473561350, ; 71: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 39
	i64 11162124722117608902, ; 72: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 38
	i64 11529969570048099689, ; 73: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 38
	i64 12451044538927396471, ; 74: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 29
	i64 12466513435562512481, ; 75: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 34
	i64 12538491095302438457, ; 76: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 24
	i64 12963446364377008305, ; 77: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 50
	i64 13370592475155966277, ; 78: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13454009404024712428, ; 79: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 47
	i64 13572454107664307259, ; 80: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 35
	i64 13625875842063280493, ; 81: FoodOrderingSystem.Android.dll => 0xbd18d5e2a7c2296d => 0
	i64 13647894001087880694, ; 82: System.Data.dll => 0xbd670f48cb071df6 => 49
	i64 13959074834287824816, ; 83: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 29
	i64 13967638549803255703, ; 84: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 43
	i64 14124974489674258913, ; 85: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 24
	i64 14164783236351491542, ; 86: FFImageLoading.Svg.Platform.dll => 0xc4936b4e23237dd6 => 8
	i64 14252460695396124839, ; 87: FFImageLoading.Svg.Forms.dll => 0xc5cae97d5c4d88a7 => 7
	i64 14792063746108907174, ; 88: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 47
	i64 15370334346939861994, ; 89: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 26
	i64 15398511348637731642, ; 90: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 5
	i64 15404322903526314552, ; 91: FFImageLoading.Svg.Platform => 0xd5c72610ae199238 => 8
	i64 15609085926864131306, ; 92: System.dll => 0xd89e9cf3334914ea => 17
	i64 15810740023422282496, ; 93: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 45
	i64 16154507427712707110, ; 94: System => 0xe03056ea4e39aa26 => 17
	i64 16324796876805858114, ; 95: SkiaSharp.dll => 0xe28d5444586b6342 => 15
	i64 16833383113903931215, ; 96: mscorlib => 0xe99c30c1484d7f4f => 13
	i64 17643123953373031521, ; 97: FFImageLoading => 0xf4d8f7c220fc2c61 => 3
	i64 17704177640604968747, ; 98: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 34
	i64 17710060891934109755, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 33
	i64 17882897186074144999, ; 100: FormsViewGroup => 0xf82cd03e3ac830e7 => 10
	i64 17892495832318972303, ; 101: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 45
	i64 17947624217716767869, ; 102: FFImageLoading.Platform => 0xf912c522ab34bc7d => 6
	i64 18129453464017766560 ; 103: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 48
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [104 x i32] [
	i32 5, i32 42, i32 12, i32 36, i32 50, i32 30, i32 28, i32 44, ; 0..7
	i32 51, i32 46, i32 2, i32 22, i32 14, i32 23, i32 36, i32 33, ; 8..15
	i32 6, i32 39, i32 14, i32 7, i32 28, i32 32, i32 25, i32 21, ; 16..23
	i32 19, i32 13, i32 4, i32 41, i32 46, i32 31, i32 37, i32 18, ; 24..31
	i32 35, i32 0, i32 48, i32 21, i32 37, i32 43, i32 40, i32 16, ; 32..39
	i32 44, i32 10, i32 9, i32 32, i32 27, i32 30, i32 15, i32 20, ; 40..47
	i32 20, i32 41, i32 40, i32 1, i32 49, i32 22, i32 31, i32 11, ; 48..55
	i32 11, i32 9, i32 3, i32 4, i32 42, i32 23, i32 18, i32 25, ; 56..63
	i32 12, i32 51, i32 1, i32 27, i32 26, i32 16, i32 19, i32 39, ; 64..71
	i32 38, i32 38, i32 29, i32 34, i32 24, i32 50, i32 2, i32 47, ; 72..79
	i32 35, i32 0, i32 49, i32 29, i32 43, i32 24, i32 8, i32 7, ; 80..87
	i32 47, i32 26, i32 5, i32 8, i32 17, i32 45, i32 17, i32 15, ; 88..95
	i32 13, i32 3, i32 34, i32 33, i32 10, i32 45, i32 6, i32 48 ; 104..103
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
