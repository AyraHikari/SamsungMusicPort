.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceCommandAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_AUDIO_PATH_CHANGED:Ljava/lang/String; = "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

.field public static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.BIND_SERVICE"

.field public static final ACTION_EXIT_MUSIC:Ljava/lang/String; = "com.samsung.android.app.music.core.action.EXIT_MUSIC"

.field public static final ACTION_FF_DOWN:Ljava/lang/String; = "com.samsung.android.app.music.core.action.FF_DOWN"

.field public static final ACTION_FF_UP:Ljava/lang/String; = "com.samsung.android.app.music.core.action.FF_UP"

.field public static final ACTION_GOOGLE_LEGACY_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

.field public static final ACTION_MUSIC_AUTO_OFF:Ljava/lang/String; = "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

.field public static final ACTION_PLAYBACK_FORWARD:Ljava/lang/String; = "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

.field public static final ACTION_PLAYBACK_REWIND:Ljava/lang/String; = "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

.field public static final ACTION_PLAY_WIDGET_LIST:Ljava/lang/String; = "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

.field public static final ACTION_PREFIX:Ljava/lang/String; = "com.samsung.android.app.music.core.action."

.field public static final ACTION_RELOAD_QUEUE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

.field public static final ACTION_REQUEST_MUSIC_INFO:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.checkplaystatus"

.field public static final ACTION_REW_DOWN:Ljava/lang/String; = "com.samsung.android.app.music.core.action.REW_DOWN"

.field public static final ACTION_REW_UP:Ljava/lang/String; = "com.samsung.android.app.music.core.action.REW_UP"

.field public static final ACTION_SEND_MUSIC_INFO:Ljava/lang/String; = "com.sec.android.music.musicservicecommnad.mediainfo"

.field public static final ACTION_SS_CHANGE_QUEUE_MODE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

.field public static final ACTION_SS_NEXT:Ljava/lang/String; = "com.samsung.android.app.music.core.action.NEXT"

.field public static final ACTION_SS_PAUSE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.PAUSE"

.field public static final ACTION_SS_PREVIOUS:Ljava/lang/String; = "com.samsung.android.app.music.core.action.PREV"

.field public static final ACTION_SS_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

.field public static final ACTION_SS_TOGGLE_REPEAT:Ljava/lang/String; = "com.samsung.android.app.music.core.action.TOGGLE_REPEAT"

.field public static final ACTION_SS_TOGGLE_SHUFFLE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.TOGGLE_SHUFFLE"

.field public static final ACTION_START_SERVICE_CMD:Ljava/lang/String; = "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

.field public static final ACTION_TOGGLE_FAVORITE:Ljava/lang/String; = "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

.field public static final ACTION_UPDATE_WIDGET_LIST:Ljava/lang/String; = "com.samsung.android.app.music.core.action.UPDATE_WIDGET_LIST"

.field public static final EXTRA_CMD_ENQUEUE:Ljava/lang/String; = "enqueue"

.field public static final EXTRA_CMD_FASTFORWARD:Ljava/lang/String; = "fastforward"

.field public static final EXTRA_CMD_FASTFORWARD_DOWN:Ljava/lang/String; = "fastforward_down"

.field public static final EXTRA_CMD_FASTFORWARD_UP:Ljava/lang/String; = "fastforward_up"

.field public static final EXTRA_CMD_IS_BT:Ljava/lang/String; = "is_bt"

.field public static final EXTRA_CMD_NAME:Ljava/lang/String; = "command"

.field public static final EXTRA_CMD_NEXT:Ljava/lang/String; = "next"

.field public static final EXTRA_CMD_OPEN:Ljava/lang/String; = "openList"

.field public static final EXTRA_CMD_PAUSE:Ljava/lang/String; = "pause"

.field public static final EXTRA_CMD_PLAY:Ljava/lang/String; = "play"

.field public static final EXTRA_CMD_PREVIOUS:Ljava/lang/String; = "previous"

.field public static final EXTRA_CMD_REWIND:Ljava/lang/String; = "rewind"

.field public static final EXTRA_CMD_REWIND_DOWN:Ljava/lang/String; = "rewind_down"

.field public static final EXTRA_CMD_REWIND_UP:Ljava/lang/String; = "rewind_up"

.field public static final EXTRA_CMD_SEEK:Ljava/lang/String; = "seek"

.field public static final EXTRA_CMD_START_ACQUIRE_RIGHTS:Ljava/lang/String; = "startRights"

.field public static final EXTRA_CMD_STOP:Ljava/lang/String; = "stop"

.field public static final EXTRA_CMD_SUCCESS_ACQUIRE_RIGHTS:Ljava/lang/String; = "successRights"

.field public static final EXTRA_CMD_TOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final EXTRA_CMD_VOLUME_DOWN:Ljava/lang/String; = "volume_down"

.field public static final EXTRA_CMD_VOLUME_UP:Ljava/lang/String; = "volume_up"

.field public static final EXTRA_DMR_DEVICE:Ljava/lang/String; = "dmr_device"

.field public static final EXTRA_EDGE_ANIMATION_STATE:Ljava/lang/String; = "edge_animation_state"

.field public static final EXTRA_FORCE:Ljava/lang/String; = "force"

.field public static final EXTRA_KEY:Ljava/lang/String; = "listQueryKey"

.field public static final EXTRA_LIST:Ljava/lang/String; = "list"

.field public static final EXTRA_SEEK_POSITION:Ljava/lang/String; = "seek_position"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final MUSIC_SERVICE_TIMEOUT:I = 0x1d4c0
