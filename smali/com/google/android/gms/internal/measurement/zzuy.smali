.class final Lcom/google/android/gms/internal/measurement/zzuy;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuy;->c()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getEmptyRegistry"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzuy;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuz;->a:Lcom/google/android/gms/internal/measurement/zzuz;

    return-object v0
.end method

.method private static final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzuz;

    return-object p0
.end method

.method static b()Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "loadGeneratedRegistry"

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzuy;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuz;->c()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuy;->a()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
