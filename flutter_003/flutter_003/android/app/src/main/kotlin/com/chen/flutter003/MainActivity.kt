package com.chen.flutter003

import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build
import android.os.Bundle
import android.util.Log
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import java.text.SimpleDateFormat

class MainActivity : FlutterActivity() {

    private var BATTERY_CHANNEL = "samples.flutter.io/battery";
    private var CHARGING_CHANNEL = "samples.flutter.io/charging";
    private var EVENT_CHANNEL = "samples.flutter.io/EVENT_CHANNEL";

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        MyViewFlutterPlugin.registerWith(this)
//        FlutterPluginCounter.registerWith(this)
        FlutterPluginCounter.registerWith(this.registrarFor(FlutterPluginCounter.CHANNEL));


        MethodChannel(flutterView, BATTERY_CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getBatteryLevel") {
                var battery = getBatteryLevel();
                if (battery != -1) {
                    result.success(battery)
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }

//        BattlePowerPlugin.registerWith(this);
        BattlePowerPlugin.startTimeSender();
    }

    override fun onDestroy() {
        super.onDestroy()
        BattlePowerPlugin.cancelTimer();
    }

    private fun getBatteryLevel(): Int {

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            var batteryManager = getSystemService(BATTERY_SERVICE) as (BatteryManager);
            return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            var intent: Intent = ContextWrapper(getApplicationContext()).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED));
            return (intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100) /
                    intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
        }
        return 1;
    }

}
