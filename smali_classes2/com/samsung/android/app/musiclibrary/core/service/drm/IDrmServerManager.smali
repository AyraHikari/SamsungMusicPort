.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
.end method

.method public abstract open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract unacquire()V
.end method
