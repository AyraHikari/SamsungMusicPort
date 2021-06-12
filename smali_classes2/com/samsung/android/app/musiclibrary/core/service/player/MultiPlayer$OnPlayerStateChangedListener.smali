.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayerStateChangedListener"
.end annotation


# virtual methods
.method public abstract onDrmRequest(Landroid/os/Bundle;)V
.end method

.method public abstract onError(IILandroid/os/Bundle;)V
.end method

.method public abstract onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end method

.method public abstract onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
.end method

.method public abstract onServerDied()V
.end method

.method public abstract onTrackEnded(Z)V
.end method
