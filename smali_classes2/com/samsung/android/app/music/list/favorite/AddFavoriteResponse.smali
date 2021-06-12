.class public final Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;
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
            "Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;",
            ">;"
        }
    .end annotation
.end field

.field private final artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final playlistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCode:I

.field private final trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;",
            ">;"
        }
    .end annotation
.end field

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "updateDate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    iput p2, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->copy(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;"
        }
    .end annotation

    const-string v0, "updateDate"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public final getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    return v0
.end method

.method public final getPlaylistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddFavoriteResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->trackList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albumList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->albumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playlistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->playlistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
