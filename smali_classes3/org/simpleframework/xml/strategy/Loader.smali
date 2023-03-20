.class Lorg/simpleframework/xml/strategy/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallerClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {}, Lorg/simpleframework/xml/strategy/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/simpleframework/xml/strategy/Loader;->getCallerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
