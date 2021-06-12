.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreComparator"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;)V
    .locals 0

    .line 1385
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V

    return-void
.end method

.method private compareItems(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)Z"
        }
    .end annotation

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compareItems first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n compareItems second = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 1397
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    .line 1398
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    .line 1399
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getAudioId()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1400
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->playlistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)Z"
        }
    .end annotation

    .line 1387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1390
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;->compareItems(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
