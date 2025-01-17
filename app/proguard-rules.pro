# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/topjohnwu/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Retrofit classes
-keep,allowobfuscation class com.topjohnwu.magisk.data.network.**

# Snet
-keepclassmembers class com.topjohnwu.magisk.utils.ISafetyNetHelper { *; }
-keep,allowobfuscation interface com.topjohnwu.magisk.utils.ISafetyNetHelper$Callback
-keepclassmembers class * implements com.topjohnwu.magisk.utils.ISafetyNetHelper$Callback {
  void onResponse(int);
}

# Keep all fragment constructors
-keepclassmembers class * extends androidx.fragment.app.Fragment {
  public <init>(...);
}

# DelegateWorker
-keep,allowobfuscation class * extends com.topjohnwu.magisk.model.worker.DelegateWorker

# BootSigner
-keepclassmembers class com.topjohnwu.signing.BootSigner { *; }

# Strip logging
-assumenosideeffects class timber.log.Timber.Tree { *; }
-assumenosideeffects class com.topjohnwu.magisk.utils.Logger {
  public *** debug(...);
}

# Excessive obfuscation
-repackageclasses 'a'
-allowaccessmodification

# QOL
-dontnote **
-dontwarn com.caverock.androidsvg.**
-dontwarn ru.noties.markwon.**
