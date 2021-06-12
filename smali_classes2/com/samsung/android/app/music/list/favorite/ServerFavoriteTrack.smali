.class public final Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final albumId:Ljava/lang/String;

.field private final albumTitle:Ljava/lang/String;

.field private final artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private final celebYn:Ljava/lang/String;

.field private final explicit:I

.field private final imageUrl:Ljava/lang/String;

.field private final serviceStat:Ljava/lang/String;

.field private final trackId:Ljava/lang/String;

.field private final trackTitle:Ljava/lang/String;

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/Artist;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "trackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumTitle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "celebYn"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceStat"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistList"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    iput-object p7, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    iput-object p10, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/Artist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/Artist;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;"
        }
    .end annotation

    const-string v0, "trackId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackTitle"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumTitle"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "celebYn"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceStat"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistList"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    move-object v1, v0

    move/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getAlbumId()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/Artist;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final getCelebYn()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    return-object v0
.end method

.method public final getExplicit()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceStat()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerFavoriteTrack(trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->explicit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", celebYn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->celebYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->serviceStat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
