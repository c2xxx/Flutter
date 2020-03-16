package com.chen.flutter003;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.PluginRegistry;

public class FlutterPluginCounter implements EventChannel.StreamHandler {

    public static String CHANNEL = "com.jzhu.counter/plugin";

    static EventChannel channel;


    public static void registerWith(PluginRegistry.Registrar registrar) {
         channel = new EventChannel(registrar.messenger(), CHANNEL);
        FlutterPluginCounter instance = new FlutterPluginCounter();
        channel.setStreamHandler(instance);
    }

    @Override
    public void onListen(Object o, final EventChannel.EventSink eventSink) {



        new Thread(new Runnable() {
            @Override
            public void run() {
                int index = 1000;
                while (index-- > 0) {
                    Handler handler = new Handler(Looper.getMainLooper());
                    int finalIndex = index;
                    handler.post(new Runnable() {
                        @Override
                        public void run() {
                            eventSink.success(finalIndex);
                            Log.i("success", "send index=" + finalIndex);
                        }
                    });
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();

        Log.i("success", "success start");
    }

    @Override
    public void onCancel(Object o) {
        Log.i("FlutterPluginCounter", "FlutterPluginCounter:onCancel");
    }

}