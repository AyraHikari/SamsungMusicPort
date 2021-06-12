.class Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NewAdder;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewAdder"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-void
.end method


# virtual methods
.method getListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 0
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

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->buildupNewList(I)Ljava/util/List;

    move-result-object p1

    .line 172
    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {p4, p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p4
.end method
