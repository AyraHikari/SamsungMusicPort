.class final Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumArtistPagerTitleQueryArgs"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 292
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;->uri:Landroid/net/Uri;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "number_of_albums"

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "number_of_tracks"

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 344
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "artist =?"

    .line 301
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;->selection:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 305
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    move-object p1, v0

    .line 302
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;->selectionArgs:[Ljava/lang/String;

    return-void

    .line 344
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
