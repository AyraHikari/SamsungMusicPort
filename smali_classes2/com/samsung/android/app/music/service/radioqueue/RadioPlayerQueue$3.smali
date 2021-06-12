.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;I)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    iput p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .line 488
    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isSameList([J[J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->a:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 491
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const-string p2, "Queue was composed but it is not same list!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
