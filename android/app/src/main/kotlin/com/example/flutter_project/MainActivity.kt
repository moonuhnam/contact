package com.example.flutter_project

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
}

override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    getHashKey()
}

fun getHashKey(){
    var packageInfo : PackageInfo = PackageInfo()
    try {
        packageInfo = packageManager.getPackageInfo(packageName, PackageManager.GET_SIGNATURES)
    } catch (e: PackageManager.NameNotFoundException){
        e.printStackTrace()
    }

    for (signature: Signature in packageInfo.signatures){
        try{
            var md: MessageDigest = MessageDigest.getInstance("SHA")
            md.update(signature.toByteArray())
            Log.e("KEY_HASH", Base64.encodeToString(md.digest(), Base64.DEFAULT))
        } catch(e: NoSuchAlgorithmException){
            Log.e("KEY_HASH", "Unable to get MessageDigest. signature = " + signature, e)
        }
    }
}