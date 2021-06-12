.class final Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Queue"
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final playingPosition:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "playing_position"
    .end annotation
.end field

.field private final queuePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "queue_position"
    .end annotation
.end field

.field private final repeat:I

.field private final shuffle:I


# direct methods
.method public constructor <init>(IIIJLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;IIIJLjava/util/ArrayList;ILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move-wide p6, v1

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->copy(IIIJLjava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    return-wide v0
.end method

.method public final component5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(IIIJLjava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;-><init>(IIIJLjava/util/ArrayList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

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

.method public final getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlayingPosition()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    return-wide v0
.end method

.method public final getQueuePosition()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    return v0
.end method

.method public final getRepeat()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    return v0
.end method

.method public final getShuffle()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

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
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue(shuffle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->shuffle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->repeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", queuePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->queuePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playingPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->playingPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
