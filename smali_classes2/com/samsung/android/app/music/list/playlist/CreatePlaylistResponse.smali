.class public final Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final id:I

.field private final playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

.field private final resultCode:I

.field private final updateDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/Playlist;IILjava/lang/String;)V
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDeviceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;Lcom/samsung/android/app/music/list/playlist/Playlist;IILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->copy(Lcom/samsung/android/app/music/list/playlist/Playlist;IILjava/lang/String;)Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/app/music/list/playlist/Playlist;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/samsung/android/app/music/list/playlist/Playlist;IILjava/lang/String;)Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDeviceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;-><init>(Lcom/samsung/android/app/music/list/playlist/Playlist;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

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

    .line 138
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    return v0
.end method

.method public final getPlaylist()Lcom/samsung/android/app/music/list/playlist/Playlist;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    return v0
.end method

.method public final getUpdateDeviceId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreatePlaylistResponse(playlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->playlist:Lcom/samsung/android/app/music/list/playlist/Playlist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->updateDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
