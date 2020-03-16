package flutter002.chen.com.flutter_002;

import android.content.Context;
import android.view.View;
import android.widget.TextView;

import io.flutter.plugin.platform.PlatformView;

public class CustomView implements PlatformView {
    private TextView textView;

    public CustomView(Context context, String text) {
        textView = new TextView(context);
        textView.setText(text);
    }

    @Override
    public View getView() {
        return textView;
    }

    @Override
    public void dispose() {

    }
}
