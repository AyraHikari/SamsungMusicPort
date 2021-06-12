.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getPlaybackState()I
.end method

.method public abstract isSessionActivated()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;J)V
.end method

.method public abstract queueChanged()V
.end method

.method public abstract release()V
.end method

.method public abstract repeat(I)V
.end method

.method public abstract requestStartSession()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setCurrentItemId(Ljava/lang/String;)V
.end method

.method public abstract setOnCastPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;)V
.end method

.method public abstract shuffle(I)V
.end method

.method public abstract stop()V
.end method
