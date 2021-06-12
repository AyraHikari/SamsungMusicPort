.class public Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;
.super Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/service/milk/IMilkService;

.field private e:I

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Landroid/os/Handler;

.field private i:Landroid/content/ServiceConnection;

.field private j:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->c:Landroid/content/Context;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->g:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->h:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/MusicApplication;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginServiceHelper["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->c:Landroid/content/Context;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->i:Landroid/content/ServiceConnection;

    .line 68
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->k()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .line 286
    const-class v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Landroid/content/Intent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Lcom/samsung/android/app/music/service/milk/IMilkService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->i:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method private l()Lio/reactivex/subjects/PublishSubject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string v1, "getServiceConnSubject. create new subject."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/subjects/PublishSubject;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$1;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(IIILandroid/content/Intent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string p2, "broadcastCallback() parcel is null. so do not broadcast."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "responseData"

    .line 197
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    const-string v0, "responseExtData"

    .line 199
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    move-object v8, p4

    check-cast v8, [Ljava/lang/Object;

    .line 201
    iget-object p4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    monitor-enter p4

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCallback() broadcastCallback : broadcast message. client size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->h:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Ljava/util/ArrayList;IIILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string p2, "broadcastCallback() broadcastCallback : broadcast message. no client is there."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() filterReqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string v2, "registerBroadcastCallback() array is null. so create array and put it"

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 239
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() callback is added. size - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() callback is already added in list. size - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Landroid/os/IBinder;)V
    .locals 2

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/milk/IMilkService;->registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceConnected. appId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->g()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->g()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$4;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 274
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string p3, "checkBroadcastCallback() object is null!!"

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 278
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    monitor-enter p3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 281
    :cond_1
    monitor-exit p3

    return p1

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.samsung.android.app.music.service.milk.MilkService"

    .line 143
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected b()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string v1, "unbindService() unbindService : unbind completed!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->f()V

    goto :goto_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    const-string v1, "unbindService() unbindService : mService is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->l()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/samsung/android/app/music/model/UserInfo;
    .locals 2

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getUser(I)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 299
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()I
    .locals 2

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->e:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkSubscriptionUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public j()V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->g()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 159
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
