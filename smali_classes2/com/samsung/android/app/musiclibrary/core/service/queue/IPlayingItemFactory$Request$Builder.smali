.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private listPosition:I

.field private listSize:I

.field private playDirection:I

.field private playlistId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private queueItemId:J

.field private uri:Landroid/net/Uri;

.field private uriType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PLAY-QUEUE"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->playlistId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->queueItemId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->uriType:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->listPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->listSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->playDirection:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->playlistId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;
    .locals 1

    .line 103
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)V

    return-object v0
.end method

.method public setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 81
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->listPosition:I

    return-object p0
.end method

.method public setListSize(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->listSize:I

    return-object p0
.end method

.method public setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 91
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->playDirection:I

    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->playlistId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->queueItemId:J

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUriType(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;
    .locals 0

    .line 76
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->uriType:I

    return-object p0
.end method
