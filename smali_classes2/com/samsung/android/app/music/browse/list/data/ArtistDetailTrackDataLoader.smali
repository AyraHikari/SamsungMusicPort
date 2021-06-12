.class public Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;
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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    return-void
.end method
