.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "LockPlayer: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

.field private mIsPlaying:Z

.field private mIsResetStartCondition:Z

.field private final mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsResetStartCondition:Z

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mPowerManager:Landroid/os/PowerManager;

    .line 60
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mDisplayManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    .line 69
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->checkAndStartLockScreen()V

    return-void
.end method

.method private checkAndStartLockScreen()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsPlaying:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsResetStartCondition:Z

    if-eqz v0, :cond_2

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "LockPlayer: Mod start lock screen"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsResetStartCondition:Z

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mLaunchIntentSet:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;->getLaunchIntentLockScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->checkAndStartLockScreen()V

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsResetStartCondition:Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsResetStartCondition:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mIsPlaying:Z

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->checkAndStartLockScreen()V

    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->mDisplayManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->release()V

    return-void
.end method
