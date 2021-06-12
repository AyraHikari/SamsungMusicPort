.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation


# instance fields
.field private addedIndex:I

.field private audioId:J

.field private id:I

.field private playlistId:Ljava/lang/String;

.field private sourceId:Ljava/lang/String;

.field private virtualState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 200
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->audioId:J

    const-string v0, ""

    .line 203
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->sourceId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 206
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->addedIndex:I

    const-string v0, ""

    .line 209
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->playlistId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 213
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->virtualState:I

    return-void
.end method


# virtual methods
.method public final getAddedIndex()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->addedIndex:I

    return v0
.end method

.method public final getAudioId()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->audioId:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->id:I

    return v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVirtualState()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->virtualState:I

    return v0
.end method

.method public final setAddedIndex(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->addedIndex:I

    return-void
.end method

.method public final setAudioId(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->audioId:J

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->id:I

    return-void
.end method

.method public final setPlaylistId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public final setSourceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public final setVirtualState(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->virtualState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->audioId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->addedIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->virtualState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
