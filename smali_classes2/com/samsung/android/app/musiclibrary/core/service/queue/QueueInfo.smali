.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

.field public static final EMPTY_QUEUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseUri:Landroid/net/Uri;

.field private firstIndex:I

.field private keyWord:Ljava/lang/String;

.field private listInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

.field private mIsAvailableNetwork:Z

.field private mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

.field private final mPlayingItemRequestBuilder:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

.field private playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private final queryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field private final queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

.field private queueItems:Ljava/util/List;
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

.field private final queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

.field private uriType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mPlayingItemRequestBuilder:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 55
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->listInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->firstIndex:I

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mIsAvailableNetwork:Z

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    .line 75
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    iget-boolean p2, p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    iget p3, p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;-><init>(ZI)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    .line 76
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-void
.end method


# virtual methods
.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->baseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method getFirstIndex()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->firstIndex:I

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->listInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object v0
.end method

.method public getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    return-object v0
.end method

.method public getPlayingItemRequestBuilder()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mPlayingItemRequestBuilder:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    return-object v0
.end method

.method public getQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    return-object v0
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueItems:Ljava/util/List;

    return-object v0
.end method

.method public getQueueMode(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueInfo getMode() but wrong mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 184
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->getMode(II)I

    move-result p1

    return p1

    .line 182
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->getMode(II)I

    move-result p1

    return p1

    .line 178
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->getMode(II)I

    move-result p1

    return p1

    .line 180
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->getMode(II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getQueueModeList(I)Ljava/util/List;
    .locals 1
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

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->getList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUriType()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->uriType:I

    return v0
.end method

.method isAvailableNetwork()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mIsAvailableNetwork:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    return-void
.end method

.method public setBaseUri(Landroid/net/Uri;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->baseUri:Landroid/net/Uri;

    return-void
.end method

.method public setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-void
.end method

.method setFirstIndex(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->firstIndex:I

    return-void
.end method

.method setIsAvailableNetwork(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mIsAvailableNetwork:Z

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mPlayingItemRequestBuilder:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListSize(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->listInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putListInfo(II)V

    return-void
.end method

.method public setPlayPos(I)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->setPlayPos(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putCurrentPosition(I)V

    return-void
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V
    .locals 1

    .line 155
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    return-void
.end method

.method public setQueueItems(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 136
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueItems:Ljava/util/List;

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putQueueChangedReason(I)V

    return-void
.end method

.method public setQueueMode(II)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->setMode(II)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;II)V

    return-void
.end method

.method public setQueueModeList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;->setList(ILjava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;ILjava/util/List;)V

    return-void
.end method

.method public setUriType(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->uriType:I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->queueExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putUriType(I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->mPlayingItemRequestBuilder:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUriType(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    return-void
.end method
