.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCastPlayerStateChangedListener"
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract onCompletion(Z)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onSessionStateChanged(Z)V
.end method
