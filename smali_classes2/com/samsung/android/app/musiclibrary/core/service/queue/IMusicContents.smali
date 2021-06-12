.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents$UriType;
    }
.end annotation


# virtual methods
.method public abstract convertToUriType(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMatchedArtworkUri(I)Landroid/net/Uri;
.end method

.method public abstract getMatchedUri(I)Landroid/net/Uri;
.end method

.method public abstract insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z
.end method
