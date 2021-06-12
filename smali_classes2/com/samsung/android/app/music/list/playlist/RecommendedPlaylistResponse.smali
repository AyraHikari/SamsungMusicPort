.class public final Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final id:I

.field private final playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCode:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playlists"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;IILjava/util/List;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->copy(IILjava/util/List;)Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/util/List;)Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;",
            ">;)",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;"
        }
    .end annotation

    const-string v0, "playlists"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

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

.method public final getId()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    return v0
.end method

.method public final getPlaylists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendedPlaylistResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playlists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->playlists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
