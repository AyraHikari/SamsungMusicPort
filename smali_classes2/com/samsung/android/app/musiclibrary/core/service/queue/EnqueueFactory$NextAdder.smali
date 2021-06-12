.class Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NextAdder;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NextAdder"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-void
.end method


# virtual methods
.method getListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 2
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

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NextAdder;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    if-eqz p4, :cond_1

    .line 130
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/2addr p3, v1

    goto :goto_0

    :cond_1
    move p3, v1

    .line 138
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p4

    invoke-direct {p1, p2, p4, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p1
.end method
