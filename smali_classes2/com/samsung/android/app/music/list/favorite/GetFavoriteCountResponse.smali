.class public final Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final albumCount:I

.field private final contentId:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final resultCode:I

.field private final trackCount:I

.field private final trackMoreYn:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackMoreYn"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    iput p5, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    iput-object p6, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->copy(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;
    .locals 8

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackMoreYn"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getAlbumCount()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    return v0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    return v0
.end method

.method public final getTrackCount()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    return v0
.end method

.method public final getTrackMoreYn()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFavoriteCountResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->albumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackMoreYn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->trackMoreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
