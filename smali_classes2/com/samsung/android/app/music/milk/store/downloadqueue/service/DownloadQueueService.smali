.class public final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;,
        Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;,
        Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

.field private d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

.field private e:Landroid/os/Handler;

.field private f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private g:I

.field private final h:Landroid/os/Handler;

.field private final i:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final k:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

.field private final l:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b:Ljava/util/List;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g:I

    .line 368
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->i:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 678
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 691
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->k:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    .line 754
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->k:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->l:Landroid/os/IBinder;

    return-void
.end method

.method static a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 855
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 856
    iput p0, v0, Landroid/os/Message;->what:I

    .line 857
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 862
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$9;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    .line 863
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    .line 872
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "order_id != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "SV"

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueService | checkDrmLicense() - trackIds : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "@"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "00"

    invoke-static {v1, v0, p1, v2}, Lcom/samsung/android/app/music/network/request/order/DRMApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 894
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$10;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .locals 3

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueService | notifyQueueChanged()"

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    .line 205
    invoke-interface {v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "SV"

    const-string v0, "DownloadQueue_DownloadQueueService | startDownload() - Invalid id."

    .line 119
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SV"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | startDownload() - Already added this id to handler. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "SV"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | startDownload() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 129
    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 130
    iput v0, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    iget v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v4, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v2, v3, v0, v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IIJ)V

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueService | startDownload() - There is a file that was being downloaded."

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 140
    iput p1, v0, Landroid/os/Message;->what:I

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 6
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v3, "_id"

    .line 228
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 237
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p1, "SV"

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueService | deleteQueue() - queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/database/Cursor;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c()I

    move-result p0

    return p0
.end method

.method private b()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 214
    iget v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    if-nez v1, :cond_0

    const-string v0, "SV"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | pauseDownload() - Item has been gone. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iput v0, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 154
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v2, p1, v0, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IIJ)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 159
    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    if-nez v2, :cond_2

    .line 161
    :cond_3
    iput v0, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    iget v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v4, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v2, v3, v0, v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IIJ)V

    goto :goto_0

    .line 169
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a()V

    return-void
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 8
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 245
    new-instance v3, Ljava/io/File;

    const-string v4, "SamsungMusic/Download"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "SV"

    const-string v0, "DownloadQueue_DownloadQueueService | updateQueue() - Fail to get download folder."

    .line 247
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 252
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v4, "_id"

    .line 254
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 255
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    if-nez v5, :cond_2

    .line 257
    new-instance v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-direct {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;-><init>()V

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    iput v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    const-string v4, "title"

    .line 262
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    const-string v4, "artist"

    .line 263
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->c:Ljava/lang/String;

    const-string v4, "album"

    .line 264
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->d:Ljava/lang/String;

    const-string v4, "album_id"

    .line 265
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->e:J

    const-string v4, "audio_id"

    .line 267
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->f:J

    const-string v4, "track_id"

    .line 268
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    const-string v4, "track_type"

    .line 269
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    const-string v4, "bitrate"

    .line 270
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    const-string v4, "codec"

    .line 271
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->j:Ljava/lang/String;

    const-string v4, "order_id"

    .line 272
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->k:Ljava/lang/String;

    const-string v4, "is_downloading"

    .line 274
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 275
    iget v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    if-nez v4, :cond_3

    const-string v4, "mp3"

    goto :goto_0

    :cond_3
    const-string v4, "mdrm"

    :goto_0
    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->m:Ljava/lang/String;

    .line 277
    iput-object v3, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    const-string v4, "disk_number"

    .line 278
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->y:I

    const-string v4, "track_number"

    .line 279
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->x:I

    .line 281
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    const-string v4, "download_url"

    .line 283
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    const-string v4, "downloaded_size"

    .line 285
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    const-string v4, "file_size"

    .line 286
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    const-string v4, "expire_time_long"

    .line 288
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    const-string v4, "id3v1"

    .line 289
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->u:Ljava/lang/String;

    const-string v4, "id3v2"

    .line 290
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->v:Ljava/lang/String;

    const-string v4, "id3v2_filesize"

    .line 291
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->w:J

    const-string v4, "drm_type"

    .line 292
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->z:Ljava/lang/String;

    const-string v4, "delete_url"

    .line 293
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->A:Ljava/lang/String;

    .line 294
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 300
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 301
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 302
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    iget v7, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 304
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 305
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    iget v7, v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string v4, "SV"

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadQueue_DownloadQueueService | updateQueue() - queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    .line 309
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newQueue: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cursor: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", consumeTime: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/database/Cursor;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method private c()I
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 315
    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    if-nez v2, :cond_0

    .line 316
    iget v0, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g:I

    return p1
.end method

.method private c(I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(I)V

    goto :goto_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    if-ne v1, v0, :cond_1

    .line 179
    iget v1, v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    :cond_1
    const/4 v3, 0x0

    .line 181
    iput v3, v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v2, v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(I)V

    :goto_1
    return-void
.end method

.method private d()I
    .locals 10

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueService | getPendingNotStartedYetId() - Exist only one item in queue."

    .line 325
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 334
    iget v8, v7, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_1
    if-ne v3, v2, :cond_1

    .line 337
    iget v3, v7, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "SV"

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadQueue_DownloadQueueService | getPendingNotStartedYetId() - firstNotStartedYetId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", notStartedYetCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", downloadingCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pausedCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", queueCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v2, :cond_4

    add-int/2addr v4, v6

    if-ne v4, v0, :cond_4

    if-nez v5, :cond_4

    const-string v0, "SV"

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | getPendingNotStartedYetId() - firstNotStartedYetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueService | getPendingNotStartedYetId() - There is a no pending id."

    .line 363
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(I)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SV"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | deleteDownload() - Item has been gone. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    const/4 v1, 0x3

    .line 195
    iput v1, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;I)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c(I)V

    return-void
.end method

.method private e()V
    .locals 8

    .line 422
    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V

    .line 429
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V

    .line 463
    new-instance v5, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V

    .line 576
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadQueue_DownloadQueueService | "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 579
    new-instance v7, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d(I)V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private f()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 917
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 918
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$11;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$11;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Lio/reactivex/subjects/PublishSubject;)V

    .line 919
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g:I

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "SV"

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | onBind() - intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->l:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SV"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | onCreate() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/samsung/android/app/music/milk/util/MLog;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a(Z)V

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    const v0, 0x7f130032

    .line 86
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->startForeground(ILandroid/app/Notification;)V

    .line 88
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->i:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->startLoading()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e()V

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SV"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | onDestroy() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b()V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->i:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
