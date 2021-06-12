.class Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$LastAdder;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastAdder"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 0

    .line 145
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

    const v0, 0x7fffffff

    .line 151
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$LastAdder;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    if-eqz p4, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p1

    add-int v1, p1, p3

    .line 158
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p1
.end method
