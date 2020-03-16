package flutter002.chen.com.flutter_002;

import android.content.Context;

import java.util.Map;

import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class CustomViewFactory extends PlatformViewFactory {
    /**
     * @param createArgsCodec the codec used to decode the args parameter of {@link #create}.
     */
    public CustomViewFactory(MessageCodec<Object> createArgsCodec) {
        super(createArgsCodec);
    }

    @Override
    public PlatformView create(Context context, int viewId, Object args) {
        Map<String,Object> param = (Map<String,Object>)args;
        String text = (String)param.get("text");
        return new CustomView(context,text);
//        return null;
    }
}
