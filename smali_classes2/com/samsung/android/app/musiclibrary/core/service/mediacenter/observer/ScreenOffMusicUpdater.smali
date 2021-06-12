.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScreenOffMusicUpdater"


# instance fields
.field private final mClsHeadsetPlugReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsSettingOn:Z

.field private mScreenOffMusicEnabled:Z

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mWorkable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    .line 132
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mClsHeadsetPlugReceiver:Ljava/lang/Class;

    .line 52
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsSettingOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsSettingOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->updateSettingDb()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Ljava/lang/Class;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mClsHeadsetPlugReceiver:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initialize()V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v1, "ready_screen_off_music"

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mScreenOffMusicEnabled:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mWorkable:Z

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v2, "screen_off_music"

    .line 67
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsSettingOn:Z

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->updateSettingDb()V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    return-void
.end method

.method private isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private updateSettingDb()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsSettingOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mWorkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mScreenOffMusicEnabled:Z

    if-eq v1, v0, :cond_1

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mScreenOffMusicEnabled:Z

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v2, "ready_screen_off_music"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 98
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mWorkable:Z

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->updateSettingDb()V

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->initialize()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mWorkable:Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mWorkable:Z

    .line 88
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->updateSettingDb()V

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
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    return-void
.end method
