.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isServerAlive()Z
.end method

.method public abstract open(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract restartServer()V
.end method

.method public abstract startServer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stopServer()V
.end method
