.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RestoreRequest"
.end annotation


# instance fields
.field final availableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final queueItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1379
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;->availableItems:Ljava/util/List;

    .line 1381
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;->queueItems:Ljava/util/List;

    return-void
.end method
