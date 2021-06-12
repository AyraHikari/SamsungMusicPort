.class public abstract Lcom/google/android/gms/internal/measurement/zzsl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Z

.field private static volatile e:Ljava/lang/Boolean;


# instance fields
.field final a:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/measurement/zzsv;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/google/android/gms/internal/measurement/zzsi;

.field private volatile k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 107
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 108
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsl;->d:Z

    .line 109
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->i:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->j:Lcom/google/android/gms/internal/measurement/zzsi;

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->k:Landroid/content/SharedPreferences;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsv;->a(Lcom/google/android/gms/internal/measurement/zzsv;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsv;->b(Lcom/google/android/gms/internal/measurement/zzsv;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->g:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsv;->c(Lcom/google/android/gms/internal/measurement/zzsv;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsl;->a:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzsl;->h:Ljava/lang/Object;

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzsp;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsl;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 0

    .line 103
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsl;->b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsl;->b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 0

    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsl;->b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsl;->b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsl;->b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/zzsu;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzsu<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzsu;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 67
    :catch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 68
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzsu;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 7
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    if-eq v1, p0, :cond_2

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzsl;->e:Ljava/lang/Boolean;

    .line 9
    :cond_2
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 11
    sput-boolean p0, Lcom/google/android/gms/internal/measurement/zzsl;->d:Z

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static a(Ljava/lang/String;Z)Z
    .locals 2

    const/4 p1, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzso;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzso;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Lcom/google/android/gms/internal/measurement/zzsu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return p1

    :catch_0
    move-exception p0

    const-string v0, "PhenotypeFlag"

    const-string v1, "Unable to read GServices, returning default value."

    .line 85
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzss;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzss;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsq;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsq;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsp;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzst;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzst;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsv;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsr;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsr;-><init>(Lcom/google/android/gms/internal/measurement/zzsv;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static final synthetic b(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    const-string v0, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsv;->a(Lcom/google/android/gms/internal/measurement/zzsv;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->f()Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzsm;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzsm;-><init>(Lcom/google/android/gms/internal/measurement/zzsl;Lcom/google/android/gms/internal/measurement/zzsi;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Lcom/google/android/gms/internal/measurement/zzsu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    goto :goto_1

    :cond_1
    const-string v0, "PhenotypeFlag"

    const-string v1, "Bypass reading Phenotype values for flag: "

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsl;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final e()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsn;-><init>(Lcom/google/android/gms/internal/measurement/zzsl;)V

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Lcom/google/android/gms/internal/measurement/zzsu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PhenotypeFlag"

    const-string v2, "Unable to read GServices for flag: "

    .line 62
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzsl;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final f()Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->j:Lcom/google/android/gms/internal/measurement/zzsi;

    if-nez v0, :cond_0

    .line 74
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzsv;->a(Lcom/google/android/gms/internal/measurement/zzsv;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsi;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->j:Lcom/google/android/gms/internal/measurement/zzsi;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->j:Lcom/google/android/gms/internal/measurement/zzsi;

    return-object v0
.end method

.method private static g()Z
    .locals 3

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    const-string v2, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 90
    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->e:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    return v1

    .line 92
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->h:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->f:Lcom/google/android/gms/internal/measurement/zzsv;

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->h:Ljava/lang/Object;

    return-object v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final synthetic c()Ljava/lang/String;
    .locals 3

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsl;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzsg;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
