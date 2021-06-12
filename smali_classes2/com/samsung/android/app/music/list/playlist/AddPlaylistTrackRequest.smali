.class public final Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final playlistTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playlistTracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;Ljava/util/List;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->copy(Ljava/util/List;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;)",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;"
        }
    .end annotation

    const-string v0, "playlistTracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

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

.method public final getPlaylistTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddPlaylistTrackRequest(playlistTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;->playlistTracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
