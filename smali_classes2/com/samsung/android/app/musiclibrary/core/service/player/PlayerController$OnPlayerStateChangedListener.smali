.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayerStateChangedListener"
.end annotation


# virtual methods
.method public abstract onBuffering(Z)V
.end method

.method public abstract onCompletion(Z)V
.end method

.method public abstract onError(II)Z
.end method

.method public abstract onPlayerStateChanged(I)V
.end method

.method public abstract onPrepared(Z)V
.end method

.method public abstract onSeekComplete()V
.end method

.method public abstract onSpeedChanged(F)V
.end method
