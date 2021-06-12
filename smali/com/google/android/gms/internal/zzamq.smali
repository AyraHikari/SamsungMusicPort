.class public final Lcom/google/android/gms/internal/zzamq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/zzakd;

.field private final d:Lcom/google/android/gms/internal/zzns;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/zznu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/zzair;

.field private final g:[J

.field private final h:[Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/gms/internal/zzamb;

.field private o:Z

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;)V
    .locals 14
    .param p4    # Lcom/google/android/gms/internal/zznu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/zzns;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzaiu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzaiu;-><init>()V

    const-string v3, "min_1"

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v8

    const-string v9, "1_5"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v2

    const-string v3, "5_10"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v8

    const-string v9, "10_20"

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v2

    const-string v3, "20_30"

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v8

    const-string v9, "30_max"

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzaiu;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaiu;->a()Lcom/google/android/gms/internal/zzair;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzamq;->f:Lcom/google/android/gms/internal/zzair;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzamq;->i:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzamq;->j:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzamq;->k:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzamq;->l:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzamq;->q:J

    move-object v4, p1

    iput-object v4, v1, Lcom/google/android/gms/internal/zzamq;->a:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/google/android/gms/internal/zzamq;->c:Lcom/google/android/gms/internal/zzakd;

    move-object/from16 v4, p3

    iput-object v4, v1, Lcom/google/android/gms/internal/zzamq;->b:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    move-object/from16 v4, p5

    iput-object v4, v1, Lcom/google/android/gms/internal/zzamq;->d:Lcom/google/android/gms/internal/zzns;

    sget-object v4, Lcom/google/android/gms/internal/zznh;->q:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, v1, Lcom/google/android/gms/internal/zzamq;->g:[J

    return-void

    :cond_0
    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    array-length v5, v4

    new-array v5, v5, [J

    iput-object v5, v1, Lcom/google/android/gms/internal/zzamq;->g:[J

    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzamq;->g:[J

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "Unable to parse frame hash target time number."

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzamq;->g:[J

    aput-wide v2, v0, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->d:Lcom/google/android/gms/internal/zzns;

    const-string v2, "vfr2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzamb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->d:Lcom/google/android/gms/internal/zzns;

    const-string v2, "vpc2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    const-string v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzamq;->n:Lcom/google/android/gms/internal/zzamb;

    return-void
.end method

.method public final b()V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zznh;->p:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->o:Z

    if-nez v0, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->n:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->f:Lcom/google/android/gms/internal/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzair;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzait;

    const-string v2, "fps_c_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzait;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    iget v3, v1, Lcom/google/android/gms/internal/zzait;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fps_p_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzait;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzait;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->g:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const-string v2, "fh_"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamq;->g:[J

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamq;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->c:Lcom/google/android/gms/internal/zzakd;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->o:Z

    :cond_5
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/zzamb;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->l:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzamq;->d:Lcom/google/android/gms/internal/zzns;

    const-string v4, "vff2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzamq;->l:Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->nanoTime()J

    move-result-wide v3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->m:Z

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->p:Z

    if-eqz v1, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzamq;->q:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/zzamq;->q:J

    sub-long v9, v3, v9

    long-to-double v9, v9

    div-double/2addr v7, v9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamq;->f:Lcom/google/android/gms/internal/zzair;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/zzair;->a(D)V

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->m:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzamq;->p:Z

    iput-wide v3, v0, Lcom/google/android/gms/internal/zzamq;->q:J

    sget-object v1, Lcom/google/android/gms/internal/zznh;->r:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzamb;->getCurrentPosition()I

    move-result v1

    int-to-long v7, v1

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_6

    iget-object v10, v0, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    aget-object v10, v10, v9

    if-nez v10, :cond_5

    iget-object v10, v0, Lcom/google/android/gms/internal/zzamq;->g:[J

    aget-wide v11, v10, v9

    sub-long v10, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v10, v3, v10

    if-lez v10, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/zzamq;->h:[Ljava/lang/String;

    const/16 v4, 0x8

    move-object/from16 v10, p1

    invoke-virtual {v10, v4, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    const-wide/16 v10, 0x3f

    move-wide v14, v10

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    if-ge v8, v4, :cond_4

    move-wide v12, v14

    move-wide v14, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_3

    invoke-virtual {v7, v10, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int v11, v16, v11

    const/16 v4, 0x80

    if-le v11, v4, :cond_2

    move-wide/from16 v16, v5

    goto :goto_3

    :cond_2
    const-wide/16 v16, 0x0

    :goto_3
    long-to-int v4, v12

    shl-long v16, v16, v4

    or-long v14, v14, v16

    add-int/lit8 v10, v10, 0x1

    sub-long/2addr v12, v5

    const/16 v4, 0x8

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-wide v10, v14

    const/16 v4, 0x8

    move-wide v14, v12

    goto :goto_1

    :cond_4
    const-string v4, "%016X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    return-void

    :cond_5
    move-object/from16 v10, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->m:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzamq;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzamq;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->e:Lcom/google/android/gms/internal/zznu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamq;->d:Lcom/google/android/gms/internal/zzns;

    const-string v3, "vfp2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->k:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->m:Z

    return-void
.end method
