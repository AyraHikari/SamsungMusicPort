.class public final Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;",
            ">;"
        }
    .end annotation
.end field

.field private final count:I

.field private final id:I

.field private final page:I

.field private final playlistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCode:I

.field private final trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateDate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    iput p2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    iput p5, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    iput-object p6, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    iput-object p8, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    iput-object p9, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    iput-object p10, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;IILjava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->copy(IILjava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;)",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;"
        }
    .end annotation

    const-string v0, "updateDate"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public final getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    return v0
.end method

.method public final getPage()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    return v0
.end method

.method public final getPlaylistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerFavoriteResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->trackList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albumList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->albumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playlistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->playlistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
