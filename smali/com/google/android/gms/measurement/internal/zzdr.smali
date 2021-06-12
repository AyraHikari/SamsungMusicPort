.class public final Lcom/google/android/gms/measurement/internal/zzdr;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/zzef;

.field private b:Lcom/google/android/gms/measurement/internal/zzag;

.field private volatile c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/measurement/internal/zzv;

.field private final e:Lcom/google/android/gms/measurement/internal/zzev;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/measurement/internal/zzv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->e:Lcom/google/android/gms/measurement/internal/zzev;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzef;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzef;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzds;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzds;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->d:Lcom/google/android/gms/measurement/internal/zzv;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->g:Lcom/google/android/gms/measurement/internal/zzv;

    return-void
.end method

.method private final H()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const/4 v0, 0x1

    return v0
.end method

.method private final I()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->e:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzev;->a()V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->d:Lcom/google/android/gms/measurement/internal/zzv;

    .line 126
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->O:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    return-void
.end method

.method private final J()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->C()V

    return-void
.end method

.method private final K()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    .line 256
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 258
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->g:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;
    .locals 0

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzef;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    return-object p0
.end method

.method private final a(Z)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->y()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    return-object p1
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->A()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzdr;Landroid/content/ComponentName;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->g:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->A()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->K()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->J()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzag;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->I()V

    return-void
.end method


# virtual methods
.method final A()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->c:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_6

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->B()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const v4, 0xbdfcb8

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_7

    const/16 v3, 0x12

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->j()I

    move-result v0

    const/16 v3, 0x32c8

    if-ge v0, v3, :cond_4

    goto :goto_4

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 154
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 150
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_2

    :goto_5
    if-nez v0, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzn;->y()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_8
    if-eqz v3, :cond_9

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzba;->a(Z)V

    .line 187
    :cond_9
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->c:Ljava/lang/Boolean;

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzef;->b()V

    return-void

    .line 190
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->y()Z

    move-result v0

    if-nez v0, :cond_e

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 196
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_d

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v1, Landroid/content/ComponentName;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 204
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->a(Landroid/content/Intent;)V

    return-void

    .line 208
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final B()Ljava/lang/Boolean;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final C()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 221
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzef;->a()V

    .line 223
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdr;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    return-void
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 268
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->H()Z

    move-result v2

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(Lcom/google/android/gms/measurement/internal/zzad;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 61
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v5

    .line 62
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzdz;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzdz;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZZLcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzag;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 214
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->I()V

    .line 217
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->K()V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->H()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :goto_0
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_6

    if-ne v4, v2, :cond_6

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzal;->a(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 29
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v5, v2, :cond_1

    .line 32
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 34
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v9, :cond_2

    .line 35
    :try_start_0
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_2
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzfh;

    if-eqz v9, :cond_3

    .line 41
    :try_start_1
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_3
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v9, :cond_4

    .line 47
    :try_start_2
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 121
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzdn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzfh;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(Lcom/google/android/gms/measurement/internal/zzfh;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzed;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzed;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZLcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->a(Lcom/google/android/gms/measurement/internal/zzl;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 71
    :goto_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 72
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    .line 73
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzea;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzea;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZZLcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdu;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzdu;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    .line 78
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzeb;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v8

    .line 83
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzec;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzec;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 269
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 271
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 273
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 276
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 279
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 280
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 281
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 283
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->b:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final y()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdy;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final z()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/lang/Runnable;)V

    return-void
.end method
