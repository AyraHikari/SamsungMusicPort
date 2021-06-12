.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;
    }
.end annotation


# instance fields
.field private final addedOrderList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final playList:Ljava/util/List;
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

.field private playPos:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 217
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    .line 218
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playPos:I

    if-nez p2, :cond_1

    .line 219
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->addedOrderList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playPos:I

    return p0
.end method


# virtual methods
.method public getAddedOrderList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->addedOrderList:Ljava/util/List;

    return-object v0
.end method

.method public getAudioId(I)J
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayPos()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playPos:I

    return v0
.end method

.method public setPlayPos(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->playPos:I

    return-void
.end method
