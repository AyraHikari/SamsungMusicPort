.class public final Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;)V
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->copy(Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    return-object v0
.end method

.method public final copy(Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;-><init>(Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

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

.method public final getPlaylist()Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

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

    const-string v1, "SyncUpRequest(playlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;->playlist:Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
