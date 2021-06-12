.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$CustomAction;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$PlayerState;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$ERROR;
    }
.end annotation


# virtual methods
.method public abstract fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getBufferingPercent()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
.end method

.method public abstract getDmrId()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract isGoingToOtherSong()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract isPreparing()Z
.end method

.method public abstract isStop()Z
.end method

.method public abstract isSupportPlaySpeed()Z
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract reset(Z)V
.end method

.method public abstract seekTo(J)J
.end method

.method public abstract setCrossFade(I)V
.end method

.method public abstract setCurrentVolume(F)V
.end method

.method public abstract setCustomAction(I)V
.end method

.method public abstract setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end method

.method public abstract setDmrId(Ljava/lang/String;)V
.end method

.method public abstract setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end method

.method public abstract setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
.end method

.method public abstract setSkipSilences(Z)V
.end method

.method public abstract setSupposeToBePlayingPosition(J)V
.end method

.method public abstract setSupposedToBePlaying(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
