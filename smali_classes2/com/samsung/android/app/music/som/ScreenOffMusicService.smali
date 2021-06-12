.class public final Lcom/samsung/android/app/music/som/ScreenOffMusicService;
.super Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/som/ScreenOffMusicService$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/som/ScreenOffMusicService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/som/ScreenOffMusicService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/som/ScreenOffMusicService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->a:Lcom/samsung/android/app/music/som/ScreenOffMusicService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindToService()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 4

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/ServiceConnection;

    .line 44
    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    .line 42
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    const-string v1, "ServiceCoreUtils\n       \u2026ss.java\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-SOM"

    const-string v1, " onActivityCreated bindToService ${e.message}"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/ServiceConnection;

    .line 54
    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    const-string v1, "ServiceCoreUtils\n       \u2026rvice()\n                }"

    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected getBrandNameStringResId()I
    .locals 1

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b04b9

    goto :goto_0

    :cond_0
    const v0, 0x7f0b04ad

    :goto_0
    return v0
.end method

.method protected getControlButtonsLayoutResId()I
    .locals 1

    const v0, 0x7f04018d

    return v0
.end method

.method protected getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 2

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/ServicePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ServicePlayerController;-><init>()V

    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->c()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/ServicePlayerController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method protected getNotifyAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.music.intent.action.NOTIFY_SCREEN_OFF_MUSIC"

    return-object v0
.end method

.method protected getRadioPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 2

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/RadioPlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/RadioPlayerController;-><init>()V

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->c()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/RadioPlayerController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 34
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method public onCloseClick()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->onCloseClick()V

    .line 63
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->e()V

    return-void
.end method
