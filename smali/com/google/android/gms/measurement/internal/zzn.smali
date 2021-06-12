.class public final Lcom/google/android/gms/measurement/internal/zzn;
.super Lcom/google/android/gms/measurement/internal/zzco;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/google/android/gms/measurement/internal/zzp;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzco;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzo;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->a(Lcom/google/android/gms/measurement/internal/zzbt;)V

    return-void
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->i:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static j()J
    .locals 2

    .line 90
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->L:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static k()J
    .locals 2

    .line 91
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->l:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->h:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static x()Z
    .locals 1

    .line 126
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ag:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static z()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 133
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ai:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->w:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)J
    .locals 2
    .param p2    # Lcom/google/android/gms/measurement/internal/zzaf$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 30
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 33
    :catch_0
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->a()V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/measurement/internal/zzp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I
    .locals 2
    .param p2    # Lcom/google/android/gms/measurement/internal/zzaf$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 39
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 42
    :catch_0
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method final b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Failed to load metadata: PackageManager is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    .line 74
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 79
    :cond_3
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to load metadata: Package name not found"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->c()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1"

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "gaia_collection_enabled"

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z
    .locals 2
    .param p2    # Lcom/google/android/gms/measurement/internal/zzaf$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 57
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1"

    .line 109
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->b:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "measurement.event_sampling_enabled"

    .line 110
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method final e(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 112
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->U:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final f()J
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-wide/16 v0, 0x32c9

    return-wide v0
.end method

.method final f(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 113
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->W:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 23
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 24
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final g(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 114
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->X:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v0, "firebase_analytics_collection_deactivated"

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 115
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->P:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v0, "firebase_analytics_collection_enabled"

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final i(Ljava/lang/String;)Z
    .locals 1

    .line 121
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->Y:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method final j(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 122
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->Z:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method final k(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 123
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ac:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method final l(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 124
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ad:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final m(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 125
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->af:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final n(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 132
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ae:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method final o(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 134
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->aj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method final p(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 135
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->ak:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->c(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 92
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 93
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "debug.firebase.analytics.app"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "SystemProperties.get() threw an exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Could not access SystemProperties.get()"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Could not find SystemProperties.get() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Could not find SystemProperties class"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method final y()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "app_measurement_lite"

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->a:Ljava/lang/Boolean;

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->a:Ljava/lang/Boolean;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->v()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
