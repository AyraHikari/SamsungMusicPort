.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private mLocalPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShufflePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makeLocalPositions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    return-void
.end method

.method private makeLocalPositions(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    .line 58
    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 59
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    const-string v3, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 60
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 61
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 70
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getOrderedQueuePosition(I)I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getQueuePosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 109
    throw p1
.end method

.method getQueuePosition(ZZI)I
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleQueuePosition(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortQueuePosition(I)I

    move-result p1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SV-List"

    const-string p2, "LocalOnlyPlayable getQueuePosition but the index is out of bound, handle it go to first song."

    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getShuffleOrderedPosition(I)I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getShuffleQueuePosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    throw p1
.end method

.method getSortOrderedPosition(I)I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getSortQueuePosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 125
    throw p1
.end method

.method setOrderPositions(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    return-void
.end method
