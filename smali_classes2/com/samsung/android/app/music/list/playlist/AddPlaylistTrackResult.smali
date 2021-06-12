.class public final Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final trackId:Ljava/lang/String;

.field private final trackSeqId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "trackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;Ljava/lang/String;IILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->copy(Ljava/lang/String;I)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;
    .locals 1

    const-string v0, "trackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    iget p1, p1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackSeqId()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddPlaylistTrackResult(trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackSeqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->trackSeqId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
