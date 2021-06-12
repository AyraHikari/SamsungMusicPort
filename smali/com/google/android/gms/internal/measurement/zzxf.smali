.class final Lcom/google/android/gms/internal/measurement/zzxf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/zzxf;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/zzxk;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxf;->a:Lcom/google/android/gms/internal/measurement/zzxf;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxf;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "com.google.protobuf.AndroidProto3SchemaFactory"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_0

    aget-object v3, v0, v1

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzxk;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzwi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzwi;-><init>()V

    .line 24
    :cond_1
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzxf;->b:Lcom/google/android/gms/internal/measurement/zzxk;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzxf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxf;->a:Lcom/google/android/gms/internal/measurement/zzxf;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzxk;
    .locals 2

    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzxk;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzvo;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxf;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxj;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxf;->b:Lcom/google/android/gms/internal/measurement/zzxk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzxk;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    const-string v1, "messageType"

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzvo;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "schema"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvo;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxf;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzxj;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object p1

    return-object p1
.end method
