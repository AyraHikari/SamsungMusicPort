.class public Lorg/apache/commons/lang3/event/EventListenerSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x31ddd8615c1ecd20L


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private transient prototypeArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[T",
            "L;"
        }
    .end annotation
.end field

.field private transient proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>()V

    const-string v0, "Listener interface cannot be null."

    const/4 v1, 0x0

    .line 144
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ClassLoader cannot be null."

    .line 145
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v2, "Class {0} is not an interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/Validate;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static create(Ljava/lang/Class;)Lorg/apache/commons/lang3/event/EventListenerSupport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/event/EventListenerSupport<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 284
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->createInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    invoke-static {p2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    return-void
.end method

.method private initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 274
    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    .line 275
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/event/EventListenerSupport;->createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    iget-object v2, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 231
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    const-string v0, "Listener object cannot be null."

    const/4 v1, 0x0

    .line 183
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createInvocationHandler()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 294
    new-instance v0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;-><init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V

    return-object v0
.end method

.method public fire()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    return-object v0
.end method

.method getListenerCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListeners()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    const-string v0, "Listener object cannot be null."

    const/4 v1, 0x0

    .line 205
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
