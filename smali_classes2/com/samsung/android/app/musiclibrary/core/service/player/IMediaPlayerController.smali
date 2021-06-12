.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;


# virtual methods
.method public abstract getMediaPlayer()Landroid/media/MediaPlayer;
.end method

.method public abstract getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
.end method

.method public abstract getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
.end method

.method public abstract playingCompleted()V
.end method

.method public abstract setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public abstract setNextMediaPlayerInternal(Landroid/media/MediaPlayer;)V
.end method
