.class public final Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final conflictYn:I

.field private final id:I

.field private final playlistTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCode:I

.field private final totalCount:I

.field private final updateDate:Ljava/lang/String;

.field private final updateDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDeviceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistTracks"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    iput-object p7, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;IIILjava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->copy(IIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    return v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;",
            ">;)",
            "Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;"
        }
    .end annotation

    const-string v0, "updateDate"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDeviceId"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistTracks"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

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

.method public final getConflictYn()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    return v0
.end method

.method public final getPlaylistTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    return v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDeviceId()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

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

    const-string v1, "ServerTracksResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->updateDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conflictYn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->conflictYn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playlistTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->playlistTracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
