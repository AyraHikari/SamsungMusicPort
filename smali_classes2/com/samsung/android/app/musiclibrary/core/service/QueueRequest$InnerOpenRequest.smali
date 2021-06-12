.class public Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerOpenRequest"
.end annotation


# instance fields
.field public final addedOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final isReload:Z

.field public final isSameList:Z

.field public final list:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation
.end field

.field public final playMode:I

.field public final position:I

.field public final queueItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZZ)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->playMode:I

    if-nez p2, :cond_0

    .line 148
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->list:Ljava/util/List;

    if-nez p3, :cond_1

    .line 149
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->queueItems:Ljava/util/List;

    .line 150
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->addedOrderList:Ljava/util/List;

    .line 151
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->position:I

    .line 152
    iput-boolean p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isReload:Z

    .line 153
    iput-boolean p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isSameList:Z

    return-void
.end method
