.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Priority;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getExtraData()Landroid/os/Bundle;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getPlayingUri(I)Landroid/net/Uri;
.end method

.method public abstract makeCache(J)V
.end method

.method public abstract reset()V
.end method
