.class public Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.super Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# instance fields
.field protected a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
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

.field private final e:Landroid/os/Handler;

.field private f:Landroid/content/Context;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/samsung/android/app/music/service/milk/IMilkService;

.field private i:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->f:Landroid/content/Context;

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->g:Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j:I

    .line 107
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->k:Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->f:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->c:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    .line 114
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->k:Landroid/content/ComponentName;

    .line 115
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 2

    .line 119
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez v0, :cond_1

    .line 120
    const-class v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 124
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 126
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .line 325
    const-class v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private o()Lio/reactivex/subjects/PublishSubject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MilkServiceHelper"

    const-string v1, "getServiceConnSubject. create new subject."

    .line 131
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/subjects/PublishSubject;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    .line 135
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->f:Landroid/content/Context;

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

    const-string p1, "MilkServiceHelper"

    const-string p2, "broadcastCallback() parcel is null. so do not broadcast."

    .line 245
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "responseData"

    .line 249
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    const-string v0, "responseExtData"

    .line 251
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    move-object v8, p4

    check-cast v8, [Ljava/lang/Object;

    .line 253
    iget-object p4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    monitor-enter p4

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    .line 256
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

    const-string v0, "MilkServiceHelper"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCallback() broadcastCallback : broadcast message. client size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->e:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$3;

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$3;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/util/ArrayList;IIILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const-string p1, "MilkServiceHelper"

    const-string p2, "broadcastCallback() broadcastCallback : broadcast message. no client is there."

    .line 274
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
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

    const-string v0, "MilkServiceHelper"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() filterReqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "MilkServiceHelper"

    const-string v2, "registerBroadcastCallback() array is null. so create array and put it"

    .line 287
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 291
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "MilkServiceHelper"

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() callback is added. size - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "MilkServiceHelper"

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBroadcastCallback() callback is already added in list. size - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 295
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
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

    .line 168
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/milk/IMilkService;->registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j:I

    const-string p1, "MilkServiceHelper"

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceConnected. appId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const-string p2, "MilkServiceHelper"

    const-string p3, "checkBroadcastCallback() object is null!!"

    .line 231
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 235
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    monitor-enter p3

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 238
    :cond_1
    monitor-exit p3

    return p1

    :catchall_0
    move-exception p1

    .line 239
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 542
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;-><init>(Landroid/content/ServiceConnection;)V

    invoke-super {p0, v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.samsung.android.app.music.service.milk.MilkService"

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected b()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string v0, "MilkServiceHelper"

    const-string v1, "unbindService() unbindService : unbind completed!"

    .line 159
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->f()V

    goto :goto_1

    :cond_0
    const-string v0, "MilkServiceHelper"

    const-string v1, "unbindService() unbindService : mService is null!!"

    .line 162
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V
    .locals 3

    const-string v0, "MilkServiceHelper"

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBroadcastCallback() filterReqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p2, "MilkServiceHelper"

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBroadcastCallback() callback is removed from list. size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "MilkServiceHelper"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBroadcastCallback() callback is not registered in list. size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "MilkServiceHelper"

    const-string p2, "unregisterBroadcastCallback() list is null!!"

    .line 319
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
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

.method public b(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 547
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;-><init>(Landroid/content/ServiceConnection;)V

    invoke-super {p0, v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

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

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->k:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected f()V
    .locals 3

    .line 212
    invoke-super {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->f()V

    const-string v0, "MilkServiceHelper"

    const-string v1, "release()"

    .line 213
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 225
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    return-void

    :catchall_0
    move-exception v0

    .line 225
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 216
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
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

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 358
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->o()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAccessToken(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->drmLicenseExpiredTest(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkPermissionAllGranted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->syncPlaylists()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 425
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    const/4 v0, 0x0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->syncFavorites()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 438
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getServerUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 447
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 456
    instance-of p2, p1, Landroid/content/ServiceConnection;

    if-eqz p2, :cond_0

    .line 457
    check-cast p1, Landroid/content/ServiceConnection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 459
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;-><init>(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 491
    instance-of v0, p1, Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Landroid/content/ServiceConnection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 494
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;-><init>(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method
