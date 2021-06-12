.class public Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/init/StartClientProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;,
        Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->e:Z

    .line 65
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->g:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$1;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "connectivity"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$2;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;)Ljava/lang/String;
    .locals 4

    .line 183
    invoke-interface {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    :try_start_0
    const-string v1, "StartClientProviderServiceImpl"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue. subject - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x61a8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StartClientProviderServiceImpl"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue. e - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->e:Z

    .line 202
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/basic/StartClientModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getApiServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getShopId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->d:Ljava/lang/String;

    const-string v0, "StartClientProviderServiceImpl"

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;Lcom/samsung/android/app/music/model/basic/StartClientModel;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->e:Z

    const-string v0, "StartClientProviderServiceImpl"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError. error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    .line 139
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 140
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    const-string p1, "StartClientProviderServiceImpl"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensurePublishSubject. create subject. new - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", old - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->e:Z

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->g:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a(Z)V

    const-string p1, "StartClientProviderServiceImpl"

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClientIfNotInitialized. subject - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->e:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 150
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$3;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$4;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$5;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Z)V

    return-void
.end method
