.class public final Lcom/samsung/android/sdk/accessory/SAAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$b;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/samsung/android/sdk/accessory/SAAdapter;


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAAdapter$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:J

.field private f:I

.field private g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

.field private h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

.field private i:Lcom/samsung/accessory/api/IDeathCallback;

.field private j:Landroid/os/ResultReceiver;

.field private k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$a;-><init>(B)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->i:Lcom/samsung/accessory/api/IDeathCallback;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    new-instance p1, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p1
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a(Landroid/os/RemoteException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->i:Lcom/samsung/accessory/api/IDeathCallback;

    return-object p0
.end method

.method static synthetic b()Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/accessory/SAAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    return-wide v0
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v3, "Failed to tear framework connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :goto_0
    :try_start_5
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->f()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;I[BZIIII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v2, p8

    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v8, v0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v4 .. v14}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v8, v0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v4 .. v14}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    return v0

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v6, v0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed send data for connection:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/d;

    const/16 v2, 0x800

    const-string v3, "send: Remote call failed"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    const/16 v0, 0x800

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const-wide/16 v5, -0x1

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const-string p2, "findPeerAgents:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Failed to initiate peer discovery"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const-string p2, "findPeerAgents:Remote call failed"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string p3, "Failed to reject service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 p2, 0x800

    const-string p3, "rejectServiceConnection:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string p3, "Failed to request peer authentication"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 p2, 0x800

    const-string p3, "authenticatePeeragent:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string p3, "Failed to request service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 p2, 0x800

    const-string p3, "requestServiceConnection:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const-string p1, "errorcode"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "agentId"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Failed to fetch localAgent ID"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Failed to fetch localAgent ID"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 v0, 0x800

    const-string v1, "getLocalAgentId:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    move-object v1, p0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "connectionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/accessory/d;

    const-string v3, "errorcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "Failed to accept connection request!"

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v3, "Failed to accept service connection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/d;

    const/16 v2, 0x800

    const-string v3, "acceptServiceConnection:Remote call failed"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final declared-synchronized a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/accessory/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-wide v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const-wide/16 v6, -0x1

    const/16 v8, 0x800

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v5, v5, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v5, "getDefaultAdapter: About start waiting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v2, Lcom/samsung/android/sdk/accessory/d;

    const-string v3, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v1, Lcom/samsung/android/sdk/accessory/d;

    const-string v2, "Is the Samsung Accessory Service Framework installed?!"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Application is now connected to Accessory Framework!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v1, Lcom/samsung/android/sdk/accessory/d;

    const-string v2, "Unable to bind to Samsung Accessory Service!"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/accessory/d;

    const/16 v1, 0x901

    const-string v2, "Permission validation failed to bind to Samsung Accessory Service! Please re-install the application and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/accessory/d;

    const/16 v1, 0x900

    const-string v2, "Permission denied to bind to Samsung Accessory Service! Please add permission and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(JII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string p3, "Failed to send message delivery status"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 p2, 0x800

    const-string p3, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized a(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback added. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v0, "Failed to register mex callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 p2, 0x800

    const-string v0, "registerMexCallback: Remote call failed"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Service registration call failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 v0, 0x800

    const-string v1, "registerServices:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Failed to close service connection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 v0, 0x800

    const-string v1, "closeServiceConnection:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized b(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback removed. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v0, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v0, "Binding to framework does not exists"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Failed to cleanup agent details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Failed to unregister mex callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const/16 v0, 0x800

    const-string v1, "unregisterMexCallback: Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method
