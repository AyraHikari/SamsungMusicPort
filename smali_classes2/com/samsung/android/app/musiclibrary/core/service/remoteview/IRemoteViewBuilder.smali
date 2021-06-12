.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFUALT_MAXIMUM_ACTION_COUNT:I = 0xc8


# virtual methods
.method public abstract build()Landroid/widget/RemoteViews;
.end method

.method public abstract getUpdatedCount()I
.end method

.method public abstract isOverMaxUpdatedCount()Z
.end method

.method public abstract setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method

.method public abstract setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method

.method public abstract setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method

.method public abstract setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method

.method public abstract setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method

.method public abstract setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
.end method
