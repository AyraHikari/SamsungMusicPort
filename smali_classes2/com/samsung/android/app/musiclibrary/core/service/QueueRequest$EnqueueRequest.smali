.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnqueueRequest"
.end annotation


# instance fields
.field public final action:I

.field public final doChangeToPosition:Z

.field public final history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

.field public final list:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final playMode:I

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

.field public final toPosition:I


# direct methods
.method private constructor <init>(II[JLjava/util/List;ZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    .line 214
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    if-nez p3, :cond_0

    .line 215
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    if-eqz p4, :cond_1

    .line 216
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    sget-object p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    :cond_2
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->queueItems:Ljava/util/List;

    .line 217
    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    .line 218
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    if-nez p7, :cond_3

    .line 219
    sget-object p7, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->EMPTY_HISTORY:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    :cond_3
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    return-void
.end method

.method public static create(IILjava/util/List;ZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)",
            "Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;"
        }
    .end annotation

    .line 206
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;-><init>(II[JLjava/util/List;ZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v8
.end method

.method public static create(II[JZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;
    .locals 9

    .line 192
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;-><init>(II[JLjava/util/List;ZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v8
.end method

.method public static create(II[JZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;
    .locals 9

    .line 199
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;-><init>(II[JLjava/util/List;ZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-object v8
.end method
