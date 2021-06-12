.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Ljava/lang/String;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    .line 1259
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V

    .line 1260
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    .line 1261
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->setSeekPosition(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1265
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekPos is abnormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Ljava/lang/String;)V

    .line 1267
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V

    return-void
.end method
