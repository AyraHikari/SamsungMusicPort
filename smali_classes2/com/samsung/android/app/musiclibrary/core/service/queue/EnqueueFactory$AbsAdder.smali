.class abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsAdder"
.end annotation


# instance fields
.field private final mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    return-void
.end method


# virtual methods
.method final addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;I)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToList position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 58
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_2

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    .line 61
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v1, p3, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_1
    if-gt p3, v0, :cond_3

    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 71
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToList before resultAddedOrderList ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v2, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->addList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 76
    :cond_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 78
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addToList after resultAddedOrderList ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 79
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {p2, v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p2
.end method

.method abstract getListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;IZ)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;"
        }
    .end annotation
.end method
