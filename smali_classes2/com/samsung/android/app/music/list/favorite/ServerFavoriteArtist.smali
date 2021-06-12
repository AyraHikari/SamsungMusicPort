.class public final Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final albumCount:I

.field private final artistId:Ljava/lang/String;

.field private final artistName:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final trackCount:I

.field private final trackMoreYn:Ljava/lang/String;

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "artistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackMoreYn"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    iput p5, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    iput-object p6, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;
    .locals 9

    const-string v0, "artistId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackMoreYn"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;

    move-object v1, v0

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

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

.method public final getAlbumCount()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    return v0
.end method

.method public final getArtistId()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistName()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackCount()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    return v0
.end method

.method public final getTrackMoreYn()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerFavoriteArtist(artistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->albumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackMoreYn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->trackMoreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
