package com.chen.flutter003

import android.util.Log

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class KotlinConvert : FlutterActivity() {

    private fun method() {
        MethodChannel(flutterView, BATTERY_CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getBatteryLevel") {
                val batteryLevel = 1

                if (batteryLevel != -1) {
                    result.success(batteryLevel)
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }


//    /**
//     * native data to  dart
//     */
//    private void native2Dart() {
//        /**
//         * 数据流的通信（event streams）
//         */
//        EventChannel eventChannel = new EventChannel(getFlutterView(), EVENT_CHANNEL);
//        EventChannel.StreamHandler streamHandler = new EventChannel.StreamHandler() {
//
//            @Override
//            public void onListen(Object arguments, EventChannel.EventSink eventSink) {
//                Log.e("plateform_channel", "arguments: " + arguments.toString());
//                eventSink.success("DDDDDDDD");
//            }
//
//            @Override
//            public void onCancel(Object arguments) {
//                Log.e("plateform_channel", "arguments: " + arguments.toString());
//            }
//        };
//        eventChannel.setStreamHandler(streamHandler);
//    }


    /**
     * native data to  dart
     */
    private fun native2Dart() {
        /**
         * 数据流的通信（event streams）
         */
        val eventChannel = EventChannel(flutterView, EVENT_CHANNEL)
        val streamHandler = object : EventChannel.StreamHandler {

            override fun onListen(arguments: Any, eventSink: EventChannel.EventSink) {
                Log.e("plateform_channel", "arguments: $arguments")
                eventSink.success("DDDDDDDD")
            }

            override fun onCancel(arguments: Any) {
                Log.e("plateform_channel", "arguments: $arguments")
            }
        }
        eventChannel.setStreamHandler(streamHandler)
    }

    companion object {

        private val BATTERY_CHANNEL = "samples.flutter.io/battery"
        private val CHARGING_CHANNEL = "samples.flutter.io/charging"
        private val EVENT_CHANNEL = "samples.flutter.io/charging"
    }
}
