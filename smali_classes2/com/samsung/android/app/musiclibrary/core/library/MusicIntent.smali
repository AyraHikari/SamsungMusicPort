.class public Lcom/samsung/android/app/musiclibrary/core/library/MusicIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_EASY_MODE_CHANGED:Ljava/lang/String; = "com.samsung.launcher.action.EASY_MODE_CHANGE"

.field public static final ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

.field public static final ACTION_MUSIC_EASY_MODE_CHANGED:Ljava/lang/String; = "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

.field public static final ACTION_SAP_MEDIA_BUTTON:Ljava/lang/String; = "com.samsung.android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_SHARE_MUSIC:Ljava/lang/String; = "com.samsung.groupcast.action.SEND_MUSIC_FOR_DJ_MODE"

.field public static final ACTION_SIDESYNC_CONNECTED:Ljava/lang/String; = "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/MusicIntent;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
