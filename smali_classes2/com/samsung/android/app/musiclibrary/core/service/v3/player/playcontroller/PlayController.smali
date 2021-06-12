.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;
    }
.end annotation


# virtual methods
.method public abstract getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
.end method

.method public abstract release()V
.end method

.method public abstract sendCustomAction(I)V
.end method

.method public abstract sendCustomAction(ILandroid/os/Bundle;)V
.end method

.method public abstract setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
.end method

.method public abstract setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V
.end method

.method public abstract setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
.end method

.method public abstract setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
.end method

.method public abstract speed(F)V
.end method
