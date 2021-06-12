.class public final Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private final playlistId:Ljava/lang/String;

.field private final playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;
    .locals 1

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FavoritePlaylist(playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playlistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
