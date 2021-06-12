.class public Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    return-void
.end method
