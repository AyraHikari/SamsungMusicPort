.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerQueueMode"
.end annotation


# static fields
.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final mList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mQueueMode:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mQueueMode:Landroid/util/SparseIntArray;

    .line 453
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method getList(I)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mList:Landroid/util/SparseArray;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method getMode(II)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mQueueMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method setList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mList:Landroid/util/SparseArray;

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method setMode(II)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mQueueMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method setMode(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mQueueMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->mList:Landroid/util/SparseArray;

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
