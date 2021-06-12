.class public abstract Lcom/samsung/android/sdk/accessory/SAAgentV2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$a;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$c;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$e;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$d;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$b;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field public static final CONNECTION_ALREADY_EXIST:I = 0x405

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x410

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x404

.field public static final CONNECTION_FAILURE_INVALID_PEERAGENT:I = 0x409

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x500

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x406

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x407

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x40d

.field public static final CONNECTION_SUCCESS:I = 0x0

.field public static final ERROR_AGENT_REQUEST_IN_PROGRESS:I = 0xa04

.field public static final ERROR_CLASS_NOT_FOUND:I = 0xa01

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_CONSTRUCTOR_EXCEPTION:I = 0xa03

.field public static final ERROR_CONSTRUCTOR_NOT_FOUND:I = 0xa02

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x801

.field public static final FINDPEER_DEVICE_NOT_CONNECTED:I = 0x701

.field public static final FINDPEER_DUPLICATE_REQUEST:I = 0xc0d

.field public static final FINDPEER_SERVICE_NOT_FOUND:I = 0x702

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field private static final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private static c:Lcom/samsung/android/sdk/accessory/SAAgentV2$e;

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAAgentV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

.field private d:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private e:Lcom/samsung/android/sdk/accessory/SA;

.field private f:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

.field private g:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

.field private h:Lcom/samsung/android/sdk/accessory/SAAgentV2$a;

.field private i:Lcom/samsung/android/sdk/accessory/SAAgentV2$c;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/samsung/android/sdk/accessory/SAMessage;

.field private o:Landroid/content/Context;

.field private volatile p:Z

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/samsung/android/sdk/accessory/c;

.field private u:Lcom/samsung/android/sdk/accessory/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c:Lcom/samsung/android/sdk/accessory/SAAgentV2$e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->q:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->t:Lcom/samsung/android/sdk/accessory/c;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->o:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e()V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructor should not be called for initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid parameter name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->q:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->t:Lcom/samsung/android/sdk/accessory/c;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->o:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    const-string p1, "[SA_SDK]SAAgentV2"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Thread Name:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SASocket Imple class:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e()V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Constructor should not be called for initializing "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid parameter name:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static a()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d(I)V

    return-void
.end method

.method private a(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    if-nez p4, :cond_0

    const-string p1, "[SA_SDK]SAAgentV2"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid initiator peer agent:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Ignoring connection request"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p1, "[SA_SDK]SAAgentV2"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Invalid local agent Id:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".Ignoring connection request"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a(J)V

    const-string p3, "[SA_SDK]SAAgentV2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection initiated by peer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on Accessory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->h:Lcom/samsung/android/sdk/accessory/SAAgentV2$a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "agentId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Bundle;)V
    .locals 6

    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "transactionId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    if-nez v2, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a(J)V

    const/4 p1, 0x0

    if-nez v0, :cond_1

    const/16 p1, 0x609

    const-string v3, "[SA_SDK]SAAgentV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication failed error:1545 Peer Id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "[SA_SDK]SAAgentV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication success status: 0 for peer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;-><init>(I[B)V

    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/PersistableBundle;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid initiator peer agent. Ignoring connection request"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;-><init>(Ljava/util/List;)V

    const-string v2, "agentId"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i:Lcom/samsung/android/sdk/accessory/SAAgentV2$c;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to reject Service connection!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor in the implementation class."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid socketClass param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SASocket;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SA;->a()V

    return-void
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerAgentUpdated() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->h()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i:Lcom/samsung/android/sdk/accessory/SAAgentV2$c;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->b(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V

    return-void
.end method

.method private b(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x409

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v1, "handleInvlaidPeerAction: mBackgroundWorker is null!"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic c(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v2, "Find peer request successfully enqueued."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "[SA_SDK]SAAgentV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find peer request failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "[SA_SDK]SAAgentV2"

    const-string v3, "Find Peer request failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private static d(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0xc0d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFindPeerAgentsResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_SERVICE_NOT_FOUND"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_DEVICE_NOT_CONNECTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_DUPLICATE_REQUEST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x701
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Performing agent cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->h:Lcom/samsung/android/sdk/accessory/SAAgentV2$a;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->n:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->n:Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->p:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth. request for peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " done successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auth. request for peer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed as reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to request peer authentication!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/k;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/k;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->printStackTrace()V

    :goto_0
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgentV2 - initialize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "SDK initialization failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x801

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->s:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$c;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i:Lcom/samsung/android/sdk/accessory/SAAgentV2$c;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->h:Lcom/samsung/android/sdk/accessory/SAAgentV2$a;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k()V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->o:Landroid/content/Context;

    const-string v1, "SAA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#2.6.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Unable to start Agent thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(I)V
    .locals 3

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x609
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f()V

    return-void
.end method

.method private f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccessoryPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g()V

    return-void
.end method

.method private static f(I)V
    .locals 3

    if-eqz p0, :cond_4

    const/16 v0, 0x409

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x410

    if-eq p0, v0, :cond_1

    const/16 v0, 0x500

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnectionResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEERAGENT"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d()Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->n:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->n:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static g(I)V
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onError() -> ERROR_PERMISSION_FAILED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onError() -> ERROR_PERMISSION_DENIED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onError() -> ERROR_FATAL"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x401 -> :sswitch_4
        0x800 -> :sswitch_3
        0x801 -> :sswitch_2
        0x900 -> :sswitch_1
        0x901 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic g(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgentV2 - onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->p:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic h(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->j:Ljava/util/List;

    return-object p0
.end method

.method private h()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/accessory/j;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/j;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/j;->b()V

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Registration failed! : ExecutionException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Regisration failed! : InterruptedException"

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Agent ID retrieved successfully for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Agent ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v1

    const/16 v2, 0x309

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/k;->c()I

    move-result v1

    const/16 v2, 0x12a

    if-lt v1, v2, :cond_0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Service record was not found in Accessory Framework.Registering service again!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->h()V

    :try_start_1
    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Trying to fetch agent ID after re-registration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->d:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to retrieve service record after re-registration"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_0
    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to retrieve service record"

    goto :goto_0
.end method

.method static synthetic i(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g()V

    return-void
.end method

.method private j()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating SASocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SASocket;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->r:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/c;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->t:Lcom/samsung/android/sdk/accessory/c;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->t:Lcom/samsung/android/sdk/accessory/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->t:Lcom/samsung/android/sdk/accessory/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/m;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "fetch service profile description failed !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "config  util defualt instance  creation failed !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    sget-object p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c:Lcom/samsung/android/sdk/accessory/SAAgentV2$e;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method final a(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->n:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->m:Ljava/lang/String;

    return-object p1
.end method

.method final a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string p2, "[SA_SDK]SAAgentV2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p2, "Permission error!"

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g(I)V

    return-void

    :sswitch_1
    const-string p2, "[SA_SDK]SAAgentV2"

    const-string v1, "Samsung Accessory SDK cannot be initialized"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g(I)V

    return-void

    :sswitch_2
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(Z)V

    const-string p2, "Samsung Accessory Framework has died!!"

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g(I)V

    return-void

    :sswitch_3
    const/16 p1, 0x409

    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x409 -> :sswitch_3
        0x800 -> :sswitch_2
        0x801 -> :sswitch_1
        0x900 -> :sswitch_0
        0x901 -> :sswitch_0
    .end sparse-switch
.end method

.method protected acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "acceptServiceConnection: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal argument peerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected authenticatePeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "authenticatePeerAgent: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal argument peerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findPeer request received by:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->o:Landroid/content/Context;

    return-object v0
.end method

.method public getServiceChannelId(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "Failed because Service Profile is null"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getServiceChannelSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/m;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/l;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/l;->a()I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "Failed because of wrong index"

    goto :goto_0
.end method

.method public getServiceChannelSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/m;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->u:Lcom/samsung/android/sdk/accessory/m;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    .locals 1

    const-string p1, "[SA_SDK]SAAgentV2"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Peer authentication response received:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "[SA_SDK]SAAgentV2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACCEPT_STATE_ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACCEPT_STATE_ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "Invalid implementation of SAAgentV2.onFindPeerAgentsResponse(SAPeerAgent[], int) should be overrided!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLowMemory()V
    .locals 2

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Service Low Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "Invalid implementation of SAAgentV2.onPeerAgentsUpdated(SAPeerAgent[], int) should be overrided!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting connection request by default from Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected rejectServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reject connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "rejectServiceConnection: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal argument peerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseAgent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c:Lcom/samsung/android/sdk/accessory/SAAgentV2$e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->e:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgentV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connection requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "requestServiceConection: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal argument peerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
