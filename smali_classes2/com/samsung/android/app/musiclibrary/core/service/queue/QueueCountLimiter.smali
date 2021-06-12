.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getListInfoAfterRemovePositions(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    .line 68
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    if-le v1, v0, :cond_0

    .line 75
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v4, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayIndexOutOfBoundsException count : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " prev size : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " index : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " remove size : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 87
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {p1, v0, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method private static getRemovedPositionAfterRemoveAndReplaceAddedOrderList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-lt v2, p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v4

    if-ne v4, v3, :cond_0

    add-int/lit8 v4, p1, -0x1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->calculateReorderSequence(Ljava/util/List;I)V

    return-object v0
.end method

.method static removeOldItemFirstByLimit(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;
    .locals 4

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 25
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter;->getRemovedPositionAfterRemoveAndReplaceAddedOrderList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p0

    invoke-direct {v2, v3, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 38
    invoke-static {v2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter;->getListInfoAfterRemovePositions(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;

    move-result-object p0

    return-object p0
.end method
