.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FireBasePlaybackStateLogger"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 475
    iget v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->b:I

    if-ne v0, p1, :cond_0

    return-void

    .line 478
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->b:I

    .line 479
    iget p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 480
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string v0, "key_play_info_smart_view"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 485
    iget v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 488
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string v1, "key_play_info_smart_view"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 498
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_bt"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_headset"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_device"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    .line 464
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string p2, "key_play_info_sound_path_bt"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 467
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a:Landroid/content/Context;

    const-string p2, "key_play_info_sound_path_headset"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 445
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->a(I)V

    .line 447
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;->b(I)V

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
