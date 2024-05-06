; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [96 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 44
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 39
	i32 182336117, ; 2: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 36
	i32 318968648, ; 3: Xamarin.AndroidX.Activity.dll => 0x13031348 => 20
	i32 321597661, ; 4: System.Numerics => 0x132b30dd => 17
	i32 342366114, ; 5: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 30
	i32 375621378, ; 6: FoodOrderingSystem.dll => 0x16638702 => 9
	i32 442521989, ; 7: Xamarin.Essentials => 0x1a605985 => 38
	i32 450948140, ; 8: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 28
	i32 465846621, ; 9: mscorlib => 0x1bc4415d => 13
	i32 469710990, ; 10: System.dll => 0x1bff388e => 16
	i32 520798577, ; 11: FFImageLoading.Platform => 0x1f0ac171 => 6
	i32 525008092, ; 12: SkiaSharp.dll => 0x1f4afcdc => 14
	i32 581545823, ; 13: FFImageLoading.Svg.Forms => 0x22a9af5f => 7
	i32 627609679, ; 14: Xamarin.AndroidX.CustomView => 0x2568904f => 26
	i32 690569205, ; 15: System.Xml.Linq.dll => 0x29293ff5 => 19
	i32 809851609, ; 16: System.Drawing.Common.dll => 0x30455ad9 => 46
	i32 843871832, ; 17: FFImageLoading.Svg.Forms.dll => 0x324c7658 => 7
	i32 928116545, ; 18: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 44
	i32 967690846, ; 19: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 30
	i32 974778368, ; 20: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 1012816738, ; 21: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 35
	i32 1035644815, ; 22: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 22
	i32 1042160112, ; 23: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 41
	i32 1052210849, ; 24: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 32
	i32 1098259244, ; 25: System => 0x41761b2c => 16
	i32 1212365458, ; 26: FoodOrderingSystem => 0x48433a92 => 9
	i32 1293217323, ; 27: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 27
	i32 1365406463, ; 28: System.ServiceModel.Internals.dll => 0x516272ff => 45
	i32 1376866003, ; 29: Xamarin.AndroidX.SavedState => 0x52114ed3 => 35
	i32 1406073936, ; 30: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 24
	i32 1460219004, ; 31: Xamarin.Forms.Xaml => 0x57092c7c => 42
	i32 1469204771, ; 32: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 21
	i32 1530772511, ; 33: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 5
	i32 1592978981, ; 34: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 35: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 33
	i32 1639515021, ; 36: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 37: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 43
	i32 1729485958, ; 38: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 23
	i32 1766324549, ; 39: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 36
	i32 1776026572, ; 40: System.Core.dll => 0x69dc03cc => 15
	i32 1788241197, ; 41: Xamarin.AndroidX.Fragment => 0x6a96652d => 28
	i32 1793089559, ; 42: FFImageLoading.Forms.dll => 0x6ae06017 => 4
	i32 1808609942, ; 43: Xamarin.AndroidX.Loader => 0x6bcd3296 => 33
	i32 1813201214, ; 44: Xamarin.Google.Android.Material => 0x6c13413e => 43
	i32 1840964413, ; 45: FFImageLoading.Forms => 0x6dbae33d => 4
	i32 1867746548, ; 46: Xamarin.Essentials.dll => 0x6f538cf4 => 38
	i32 1878053835, ; 47: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 42
	i32 2019465201, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 32
	i32 2055257422, ; 49: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 31
	i32 2066383596, ; 50: FFImageLoading.Svg.Platform => 0x7b2a82ec => 8
	i32 2097448633, ; 51: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 29
	i32 2126786730, ; 52: Xamarin.Forms.Platform.Android => 0x7ec430aa => 40
	i32 2201231467, ; 53: System.Net.Http => 0x8334206b => 1
	i32 2279755925, ; 54: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 34
	i32 2340826669, ; 55: FFImageLoading.dll => 0x8b862e2d => 3
	i32 2475788418, ; 56: Java.Interop.dll => 0x93918882 => 11
	i32 2732626843, ; 57: Xamarin.AndroidX.Activity => 0xa2e0939b => 20
	i32 2737747696, ; 58: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 21
	i32 2766581644, ; 59: Xamarin.Forms.Core => 0xa4e6af8c => 39
	i32 2778768386, ; 60: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 37
	i32 2810250172, ; 61: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 24
	i32 2819470561, ; 62: System.Xml.dll => 0xa80db4e1 => 18
	i32 2842369275, ; 63: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 5
	i32 2853208004, ; 64: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 37
	i32 2873222696, ; 65: FFImageLoading => 0xab41e628 => 3
	i32 2905242038, ; 66: mscorlib.dll => 0xad2a79b6 => 13
	i32 2978675010, ; 67: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 27
	i32 3044182254, ; 68: FormsViewGroup => 0xb57288ee => 10
	i32 3111772706, ; 69: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3247949154, ; 70: Mono.Security => 0xc197c562 => 47
	i32 3258312781, ; 71: Xamarin.AndroidX.CardView => 0xc235e84d => 23
	i32 3317135071, ; 72: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 26
	i32 3340387945, ; 73: SkiaSharp => 0xc71a4669 => 14
	i32 3353484488, ; 74: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 29
	i32 3362522851, ; 75: Xamarin.AndroidX.Core => 0xc86c06e3 => 25
	i32 3366347497, ; 76: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 77: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 34
	i32 3404865022, ; 78: System.ServiceModel.Internals => 0xcaf21dfe => 45
	i32 3429136800, ; 79: System.Xml => 0xcc6479a0 => 18
	i32 3476120550, ; 80: Mono.Android => 0xcf3163e6 => 12
	i32 3509114376, ; 81: System.Xml.Linq => 0xd128d608 => 19
	i32 3536029504, ; 82: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 40
	i32 3617819833, ; 83: FoodOrderingSystem.Android => 0xd7a38cb9 => 0
	i32 3632359727, ; 84: Xamarin.Forms.Platform => 0xd881692f => 41
	i32 3641597786, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 31
	i32 3672681054, ; 86: Mono.Android.dll => 0xdae8aa5e => 12
	i32 3689375977, ; 87: System.Drawing.Common => 0xdbe768e9 => 46
	i32 3717589543, ; 88: FoodOrderingSystem.Android.dll => 0xdd95ea27 => 0
	i32 3829621856, ; 89: System.Numerics.dll => 0xe4436460 => 17
	i32 3896760992, ; 90: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 25
	i32 3912468689, ; 91: FFImageLoading.Svg.Platform.dll => 0xe93388d1 => 8
	i32 3955647286, ; 92: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 22
	i32 4105002889, ; 93: Mono.Security.dll => 0xf4ad5f89 => 47
	i32 4151237749, ; 94: System.Core => 0xf76edc75 => 15
	i32 4184283386 ; 95: FFImageLoading.Platform.dll => 0xf96718fa => 6
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [96 x i32] [
	i32 44, i32 39, i32 36, i32 20, i32 17, i32 30, i32 9, i32 38, ; 0..7
	i32 28, i32 13, i32 16, i32 6, i32 14, i32 7, i32 26, i32 19, ; 8..15
	i32 46, i32 7, i32 44, i32 30, i32 10, i32 35, i32 22, i32 41, ; 16..23
	i32 32, i32 16, i32 9, i32 27, i32 45, i32 35, i32 24, i32 42, ; 24..31
	i32 21, i32 5, i32 2, i32 33, i32 1, i32 43, i32 23, i32 36, ; 32..39
	i32 15, i32 28, i32 4, i32 33, i32 43, i32 4, i32 38, i32 42, ; 40..47
	i32 32, i32 31, i32 8, i32 29, i32 40, i32 1, i32 34, i32 3, ; 48..55
	i32 11, i32 20, i32 21, i32 39, i32 37, i32 24, i32 18, i32 5, ; 56..63
	i32 37, i32 3, i32 13, i32 27, i32 10, i32 2, i32 47, i32 23, ; 64..71
	i32 26, i32 14, i32 29, i32 25, i32 11, i32 34, i32 45, i32 18, ; 72..79
	i32 12, i32 19, i32 40, i32 0, i32 41, i32 31, i32 12, i32 46, ; 80..87
	i32 0, i32 17, i32 25, i32 8, i32 22, i32 47, i32 15, i32 6 ; 96..95
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
