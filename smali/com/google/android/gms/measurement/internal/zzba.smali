.class final Lcom/google/android/gms/measurement/internal/zzba;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# static fields
.field static final a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/google/android/gms/measurement/internal/zzbe;

.field public final c:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final d:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final e:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final f:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final g:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final h:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final i:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final j:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final k:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final l:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final m:Lcom/google/android/gms/measurement/internal/zzbc;

.field public final n:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final o:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final p:Lcom/google/android/gms/measurement/internal/zzbd;

.field public q:Z

.field private s:Landroid/content/SharedPreferences;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 124
    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzba;->a:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 5

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 28
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->c:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 29
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->d:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 30
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->e:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 31
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->f:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 32
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->k:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 33
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->l:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 34
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    .line 35
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "allow_ad_personalization"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->n:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 36
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->o:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 37
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 38
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->g:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 39
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 40
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "app_install_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->i:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 41
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->j:Lcom/google/android/gms/measurement/internal/zzbf;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final x()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->A()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->v:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->u:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaf;->j:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzn;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->v:J

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Z)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->u:Z

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Unable to get advertising id"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Z)V

    .line 20
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->t:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->u:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final a(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    .line 78
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzba;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfk;->i()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v6, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final b(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    .line 96
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    .line 59
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final c(Z)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final d(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "admob_app_id"

    .line 66
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final d(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Updating deferred analytics collection"

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 117
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final f()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->s:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->s:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->q:Z

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->q:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_been_opened"

    const/4 v2, 0x1

    .line 48
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v5, "health_monitor"

    const-wide/16 v1, 0x0

    .line 51
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaf;->k:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->b:Lcom/google/android/gms/measurement/internal/zzbe;

    return-void
.end method

.method final g()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final i()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final j()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->c(Z)Z

    move-result v1

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->b(Z)V

    :cond_1
    return-void
.end method

.method protected final k()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->A()V

    .line 105
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "previous_os_version"

    .line 109
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method final v()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final w()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->s:Landroid/content/SharedPreferences;

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
