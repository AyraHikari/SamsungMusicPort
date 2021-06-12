.class public final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils$HeadsetConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffMusicUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canStartService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SOM"

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onReceive(), but ignore it because not in call idle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SOM"

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onReceive(), but ignore it because in dex dual mode."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v2

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    if-nez v2, :cond_3

    const-string p0, "SOM"

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onReceive(), but ignore it because cover is close."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v0, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "state"

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 59
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->hasPlayingSession(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "power"

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 61
    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->wakeUp(Landroid/os/PowerManager;J)V

    const/4 v0, 0x0

    :cond_4
    return v0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v1
.end method
