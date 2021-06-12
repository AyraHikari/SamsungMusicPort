.class final Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerPlaylistData"
.end annotation


# instance fields
.field private final id:J

.field private final sourceId:Ljava/lang/String;

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->copy(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    return-wide v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerPlaylistData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
