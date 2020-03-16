package com.chen.flutter003;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.util.Timer;
import java.util.TimerTask;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMessageCodec;

public class BattlePowerPlugin implements MethodChannel.MethodCallHandler {
    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {

    }


    private static BasicMessageChannel<Object> runTimeSender;

    private static Timer timer;

    private static long startTime;

    /**
     * Plugin registration.
     */
    public static void registerWith(PluginRegistry.Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "battle_power");
        BattlePowerPlugin handler = new BattlePowerPlugin();
        channel.setMethodCallHandler(handler);

        runTimeSender = new BasicMessageChannel<>(registrar.messenger(), "run_time", new StandardMessageCodec());
        startTime = System.currentTimeMillis();
    }

    public static void startTimeSender() {
        if (timer != null) {
            timer.cancel();
        } else {
            timer = new Timer();
        }

        timer.schedule(new TimerTask() {
            @Override
            public void run() {
//                if (runTimeSender != null) {
//                    runTimeSender.send(System.currentTimeMillis() - startTime);
//                }

                Handler handler = new Handler(Looper.getMainLooper());
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        if (runTimeSender != null)
                            runTimeSender.send("XX");
                        Log.i("success", "runTimeSender.send(\"XX\")");
                    }
                });
            }
        }, 5000, 5000);
    }

    public static void cancelTimer() {
        timer.cancel();
    }
}
