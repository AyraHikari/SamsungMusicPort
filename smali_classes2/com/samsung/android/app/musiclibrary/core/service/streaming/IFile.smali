.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract active(Z)V
.end method

.method public abstract getAvailableBytes()J
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
.end method

.method public abstract getPlayingUri()Landroid/net/Uri;
.end method

.method public abstract getTotalBytes()J
.end method

.method public abstract isDead()Z
.end method

.method public abstract isLoadFinished()Z
.end method

.method public abstract obtainInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
.end method

.method public abstract setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
.end method

.method public abstract unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
.end method
