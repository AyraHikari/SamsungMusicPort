.class public Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "FwSkipSilence: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mIsActiveSkipSilences:Z

.field private final mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    return-void
.end method

.method private setSkipSilence(Landroid/media/MediaPlayer;Z)V
    .locals 3

    :try_start_0
    const-string v0, "SV-PlayerMedia"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FwSkipSilence: setSkipSilence() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSkipSilence(Landroid/media/MediaPlayer;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SV-PlayerMedia"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkipSilence() - IllegalStateException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    return v0
.end method

.method public onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
    .locals 2

    const-string p2, "SV-PlayerMedia"

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FwSkipSilence: onMediaPlayerStateChanged() mediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 48
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setSkipSilence(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setSkipSilence(Landroid/media/MediaPlayer;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public setNextMediaplayer(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p1, "SV-PlayerMedia"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FwSkipSilence: setValue() isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq p1, v0, :cond_2

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 69
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setSkipSilence(Landroid/media/MediaPlayer;Z)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 73
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setSkipSilence(Landroid/media/MediaPlayer;Z)V

    :cond_2
    return-void
.end method
