.class final Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalPlaylist"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    iput-object p3, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 848
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 849
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPlaylist(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
