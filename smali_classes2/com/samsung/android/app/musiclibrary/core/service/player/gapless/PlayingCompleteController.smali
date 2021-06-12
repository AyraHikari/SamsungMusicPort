.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController$Value;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController$BundleArgs;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController$MediaPlayerState;
    }
.end annotation


# virtual methods
.method public abstract isActive()Z
.end method

.method public abstract onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract setNextMediaplayer(Landroid/media/MediaPlayer;)V
.end method

.method public abstract setValue(I)V
.end method
