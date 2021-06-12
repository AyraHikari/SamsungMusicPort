.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getExtraData()Landroid/os/Bundle;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getPlayingUri(I)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract makeCache(J)V
.end method

.method public abstract reset()V
.end method
