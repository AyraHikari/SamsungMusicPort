.class public final Lcom/google/android/gms/measurement/internal/zzx;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->c:Ljava/lang/Boolean;

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x80

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->d()V

    return-void
.end method

.method protected final e()Z
    .locals 4

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->a:J

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->b:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->A()V

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->a:J

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->A()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method
