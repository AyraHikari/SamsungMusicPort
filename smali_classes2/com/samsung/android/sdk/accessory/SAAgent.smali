.class public abstract Lcom/samsung/android/sdk/accessory/SAAgent;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$b;,
        Lcom/samsung/android/sdk/accessory/SAAgent$a;
    }
.end annotation


# instance fields
.field a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

.field private b:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private c:Lcom/samsung/android/sdk/accessory/SA;

.field private d:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

.field private e:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

.field private f:Lcom/samsung/android/sdk/accessory/SAAdapter$1;

.field private g:Lcom/samsung/android/sdk/accessory/SAAgent$b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/samsung/android/sdk/accessory/SAMessage;

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->b()V

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->f:Lcom/samsung/android/sdk/accessory/SAAdapter$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

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

    if-nez v2, :cond_1

    const-string p0, "[SA_SDK]SAAgent"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid initiator peer agent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Ignoring connection request"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "[SA_SDK]SAAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid local agent Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".Ignoring connection request"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a(J)V

    const-string p1, "[SA_SDK]SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection initiated by peer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on Accessory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->i:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V
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

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a(J)V

    const/4 p1, 0x0

    if-nez v0, :cond_1

    const/16 p1, 0x609

    const-string v3, "[SA_SDK]SAAgent"

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
    const-string v3, "[SA_SDK]SAAgent"

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

    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->e()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->g:Lcom/samsung/android/sdk/accessory/SAAgent$b;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V

    return-void
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

    const-string v1, "[SA_SDK]SAAgent"

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

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->h:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->c:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SA;->a()V

    return-void
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->k:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->k:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerAgentUpdated() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

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

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->c()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->e()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->g:Lcom/samsung/android/sdk/accessory/SAAgent$b;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->b(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/accessory/j;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

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
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Registration failed! : ExecutionException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Regisration failed! : InterruptedException"

    goto :goto_0
.end method

.method static synthetic c(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->d:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Find peer request successfully enqueued."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "[SA_SDK]SAAgent"

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

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "[SA_SDK]SAAgent"

    const-string v3, "Find Peer request failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private c(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to reject Service connection!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgent"

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

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Service record was not found in Accessory Framework.Registering service again!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->c()V

    :try_start_1
    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Trying to fetch agent ID after re-registration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

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
    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to retrieve service record after re-registration"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_0
    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to retrieve service record"

    goto :goto_0
.end method

.method private static d(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0xc0d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFindPeerAgentsResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_SERVICE_NOT_FOUND"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_DEVICE_NOT_CONNECTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onFindPeerAgentsResponse() -> FINDPEER_DUPLICATE_REQUEST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

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

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 2

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Performing agent cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->f:Lcom/samsung/android/sdk/accessory/SAAdapter$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->k:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->k:Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->a()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x800

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->e:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

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
    const-string v1, "[SA_SDK]SAAgent"

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->e(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to request peer authentication!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method private d(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->i:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x409

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p1, "[SA_SDK]SAAgent"

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

.method private e()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating SASocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

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
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->l:Ljava/lang/Class;

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

    const-string v1, "[SA_SDK]SAAgent"

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

    const-string v1, "[SA_SDK]SAAgent"

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

    const-string v1, "[SA_SDK]SAAgent"

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

    const-string v1, "[SA_SDK]SAAgent"

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

    const-string v1, "[SA_SDK]SAAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(I)V
    .locals 3

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

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

.method static synthetic e(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->h:Ljava/util/List;

    return-object p0
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

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnectionResponse() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEERAGENT"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p0, "[SA_SDK]SAAgent"

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

.method private static g(I)V
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onError() -> ERROR_PERMISSION_FAILED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onError() -> ERROR_PERMISSION_DENIED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onError() -> ERROR_FATAL"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    const-string p0, "[SA_SDK]SAAgent"

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

.method static synthetic g(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->b()V

    return-void
.end method


# virtual methods
.method final a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string p2, "[SA_SDK]SAAgent"

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

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->g(I)V

    return-void

    :sswitch_1
    const-string p2, "[SA_SDK]SAAgent"

    const-string v1, "Samsung Accessory SDK cannot be initialized"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->g(I)V

    return-void

    :sswitch_2
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Z)V

    const-string p2, "Samsung Accessory Framework has died!!"

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->g(I)V

    return-void

    :sswitch_3
    const/16 p1, 0x409

    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->f(I)V

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

.method protected a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

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
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->b(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    .locals 1

    const-string p1, "[SA_SDK]SAAgent"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Peer authentication response received:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgent"

    const-string p2, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "[SA_SDK]SAAgent"

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
    const-string v0, "[SA_SDK]SAAgent"

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

.method protected a([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgent"

    const-string p2, "Invalid implementation of SAAgent.onFindPeerAgentsResponse(SAPeerAgent[], int) should be overrided!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->c:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

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

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgent"

    const-string v0, "acceptServiceConnection: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->d(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

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

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

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

.method protected b([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgent"

    const-string p2, "Invalid implementation of SAAgent.onPeerAgentsUpdated(SAPeerAgent[], int) should be overrided!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
