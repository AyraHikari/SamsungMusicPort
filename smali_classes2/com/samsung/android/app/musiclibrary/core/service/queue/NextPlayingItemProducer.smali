.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private final mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

.field private final mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

.field private final mSupportLocalOnlyPlayable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Landroid/net/Uri;ILjava/lang/String;IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;ZJLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 27
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUriType(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p10, p11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListSize(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 29
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    .line 30
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    .line 31
    iput-boolean p9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mSupportLocalOnlyPlayable:Z

    return-void
.end method


# virtual methods
.method public getItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mSupportLocalOnlyPlayable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_1
    return-void
.end method
