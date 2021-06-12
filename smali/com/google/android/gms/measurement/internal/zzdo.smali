.class public final Lcom/google/android/gms/measurement/internal/zzdo;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected a:Lcom/google/android/gms/measurement/internal/zzdn;

.field private volatile b:Lcom/google/android/gms/measurement/internal/zzdn;

.field private c:Lcom/google/android/gms/measurement/internal/zzdn;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/zzdn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/measurement/internal/zzdn;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 82
    array-length v0, p0

    if-lez v0, :cond_0

    .line 83
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 85
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method private final a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdn;Z)V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 50
    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object p2, v1

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdo;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdp;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdp;-><init>(Lcom/google/android/gms/measurement/internal/zzdo;ZLcom/google/android/gms/measurement/internal/zzdn;Lcom/google/android/gms/measurement/internal/zzdn;)V

    .line 57
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/measurement/internal/zzdn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->a(J)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzdn;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzdn;->d:Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "_sc"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "_sn"

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "_sn"

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    const-string p2, "_sc"

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_si"

    .line 69
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    if-eqz p2, :cond_3

    const-string p0, "_sn"

    .line 71
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "_sc"

    .line 72
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "_si"

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzdo;Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdn;)V

    return-void
.end method

.method private final d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdn;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzdn;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdn;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->g()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdn;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzd;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zza;J)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.google.app_measurement.screen_service"

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdn;

    const-string v1, "name"

    .line 101
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 102
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 103
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->k()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v0, 0x64

    if-eqz p2, :cond_5

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz p3, :cond_7

    .line 33
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_7

    .line 35
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Invalid class name length in setCurrentScreen. Length"

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Setting current screen to name, class"

    if-nez p2, :cond_8

    const-string v2, "null"

    goto :goto_0

    :cond_8
    move-object v2, p2

    .line 42
    :goto_0
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->g()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdn;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdo;->f:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdo;->e:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 80
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdq;-><init>(Lcom/google/android/gms/measurement/internal/zzdo;Lcom/google/android/gms/measurement/internal/zzdn;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzdn;

    if-nez p1, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 125
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    .line 126
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    .line 127
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 128
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/zzdn;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/zzdn;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdo;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    return-object v0
.end method
