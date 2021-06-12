.class public Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerController()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    move-result-object p0

    .line 8
    instance-of v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
