.class public Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;
.super Lcom/samsung/android/app/musiclibrary/ui/framework/DefaultSecIntent;
.source "SourceFile"


# static fields
.field public static final ACTION_DOCK_PLUG:Ljava/lang/String; = "com.sec.android.intent.action.INTERNAL_SPEAKER"

.field public static final ACTION_HDMI_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "com.sec.android.contextaware.HEADSET_PLUG"

.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field public static final ACTION_VIEW_COVER_ATTACHED:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field public static final ACTION_VIEW_COVER_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "com.sec.android.intent.action.WALLPAPER_CHANGED"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/DefaultSecIntent;-><init>()V

    return-void
.end method
