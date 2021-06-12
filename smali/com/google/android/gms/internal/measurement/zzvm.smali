.class public abstract Lcom/google/android/gms/internal/measurement/zzvm;
.super Lcom/google/android/gms/internal/measurement/zztw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzvm$zzb;,
        Lcom/google/android/gms/internal/measurement/zzvm$zzd;,
        Lcom/google/android/gms/internal/measurement/zzvm$zzc;,
        Lcom/google/android/gms/internal/measurement/zzvm$zza;,
        Lcom/google/android/gms/internal/measurement/zzvm$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzvm$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zztw<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbyo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

.field private zzbyn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyc;->a()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzuo;Lcom/google/android/gms/internal/measurement/zzuz;)Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/measurement/zzuo;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzvt;
        }
    .end annotation

    .line 82
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->d:I

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 84
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 85
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->a(Lcom/google/android/gms/internal/measurement/zzuo;)Lcom/google/android/gms/internal/measurement/zzur;

    move-result-object p1

    .line 87
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxj;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;Lcom/google/android/gms/internal/measurement/zzuz;)V

    .line 89
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxj;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzvt;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvt;

    throw p0

    .line 98
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/zzvt;

    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvt;

    throw p0

    .line 94
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzvt;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzvt;->zzg(Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p0

    throw p0
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxh;-><init>(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 66
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 68
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 69
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 67
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyo:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final a(Lcom/google/android/gms/internal/measurement/zzvm;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 71
    sget p1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->a:I

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxj;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static g()Lcom/google/android/gms/internal/measurement/zzvs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzvs<",
            "TE;>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxg;->d()Lcom/google/android/gms/internal/measurement/zzxg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzut;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzuv;->a(Lcom/google/android/gms/internal/measurement/zzut;)Lcom/google/android/gms/internal/measurement/zzuv;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method final d()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->a:I

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/measurement/zzxj;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    .line 29
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->b:I

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 32
    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->f:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    .line 48
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbyn:I

    return v0
.end method

.method public final synthetic h()Lcom/google/android/gms/internal/measurement/zzwu;
    .locals 2

    .line 101
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->e:I

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbtr:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbtr:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxj;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbtr:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbtr:I

    return v0
.end method

.method public final synthetic i()Lcom/google/android/gms/internal/measurement/zzwu;
    .locals 2

    .line 108
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->e:I

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method public final synthetic j()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 2

    .line 113
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->f:I

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzww;->a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
