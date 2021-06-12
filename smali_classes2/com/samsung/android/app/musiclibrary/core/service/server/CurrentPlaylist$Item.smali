.class final Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation


# instance fields
.field private final artist:Ljava/lang/String;

.field private final cpAttrs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "cp_attrs"
    .end annotation
.end field

.field private final id:J

.field private final queueItemId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "queue_item_id"
    .end annotation
.end field

.field private final sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "source_id"
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;
    .locals 10

    move-object v0, p0

    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p10, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v6, p10, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    and-int/lit8 v7, p10, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, p10, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p8

    :goto_4
    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v1, p9

    :goto_5
    move-wide p1, v2

    move-wide p3, v4

    move-object p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->copy(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;
    .locals 11

    const-string v0, "sourceId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

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

.method public final getArtist()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpAttrs()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    return-wide v0
.end method

.method public final getQueueItemId()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    return-wide v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

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

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    ushr-long v1, v4, v2

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(queueItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->queueItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->cpAttrs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
