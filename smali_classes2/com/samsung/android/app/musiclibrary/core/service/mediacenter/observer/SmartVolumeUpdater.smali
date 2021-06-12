.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartVolumeUpdater"


# instance fields
.field private final mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private mBaseVolume:I

.field private mIgnoreVolumeEvent:Z

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mSettingEnabled:Z

.field private mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    .line 45
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 46
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 49
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    return-void
.end method

.method private adjustSmartVolume(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 137
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Don\'t Set Smart volume in AVPlayer mode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 141
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 142
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSongPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    if-nez p2, :cond_2

    .line 148
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    .line 149
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustSmartVolume base volume is zero. So, re-check. mBaseVolume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getVolume(ILjava/lang/String;)I

    move-result p1

    .line 153
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result p2

    .line 155
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSmartVolume mBaseVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private ensureSmartVolume()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->setMaxVolumeLevel(I)V

    return-void
.end method

.method private setSmartVolumeEarSafety(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSmartVolumeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->ensureSmartVolume()V

    .line 173
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    goto :goto_0

    :cond_0
    return-void

    .line 178
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 179
    :goto_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaybackStateChanged mSettingEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    const/4 v1, 0x1

    .line 188
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->adjustSmartVolume(Ljava/lang/String;Z)V

    :cond_4
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

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->release()I

    :cond_0
    return-void
.end method

.method public resetBaseVolume(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 108
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result p1

    .line 114
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    if-eq p1, v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetBaseValue()V

    .line 120
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetBaseVolume prev : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setSmartVolume(Z)V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->ensureSmartVolume()V

    .line 78
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartVolume mSettingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    if-eq v0, p1, :cond_3

    .line 84
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 88
    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    .line 89
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetValues()V

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    .line 92
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartVolume mBaseVolume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 96
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->adjustSmartVolume(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
