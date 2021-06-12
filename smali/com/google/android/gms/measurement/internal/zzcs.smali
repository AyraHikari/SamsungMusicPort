.class public final Lcom/google/android/gms/measurement/internal/zzcs;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected a:Lcom/google/android/gms/measurement/internal/zzdm;

.field protected b:Z

.field private c:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->d:Ljava/util/Set;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->b:Z

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final C()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->am:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Z)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->b:Z

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->y()V

    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->y()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->C()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    .line 670
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->d(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .line 669
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzcs;Z)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->c(Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 28
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p5

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 87
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzcs;->e:Z

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 91
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzcs;->e:Z

    :try_start_0
    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v9, "initialize"

    .line 96
    new-array v10, v7, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v16

    .line 97
    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v9, v16

    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v9, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 v0, 0x28

    if-eqz p8, :cond_6

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v9, "_iap"

    .line 107
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 108
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    const-string v10, "event"

    .line 109
    invoke-virtual {v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v10, "event"

    .line 111
    sget-object v12, Lcom/google/android/gms/measurement/AppMeasurement$Event;->a:[Ljava/lang/String;

    invoke-virtual {v9, v10, v12, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/16 v9, 0xd

    const/16 v11, 0xd

    goto :goto_1

    :cond_3
    const-string v10, "event"

    .line 113
    invoke-virtual {v9, v10, v0, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_6

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->h()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 124
    invoke-static {v6, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_5

    .line 125
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 126
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    const-string v4, "_ev"

    .line 128
    invoke-virtual {v3, v11, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 130
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzdo;->x()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v15

    if-eqz v15, :cond_7

    const-string v9, "_sc"

    .line 134
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 135
    iput-boolean v7, v15, Lcom/google/android/gms/measurement/internal/zzdn;->d:Z

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p8, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 137
    :goto_3
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    const-string v9, "am"

    .line 138
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 139
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v9

    if-eqz p6, :cond_9

    .line 140
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->c:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v2, :cond_9

    if-nez v9, :cond_9

    if-nez v17, :cond_9

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Passing event to registered event handler (FE)"

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->c:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 147
    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->H()Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    .line 149
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->h()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v6, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_b

    .line 157
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    .line 158
    :cond_b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 159
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    const-string v4, "_ev"

    move-object/from16 p1, v3

    move-object/from16 p2, p9

    move/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move/from16 p6, v16

    .line 160
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_c
    const-string v0, "_o"

    const-string v2, "_sn"

    const-string v9, "_sc"

    const-string v10, "_si"

    .line 162
    filled-new-array {v0, v2, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    const/4 v2, 0x1

    move-object/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-object v13, v0

    move/from16 v14, p8

    move-object/from16 v18, v15

    move v15, v2

    .line 166
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v9, "_sc"

    .line 169
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "_si"

    .line 170
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_4

    :cond_d
    const-string v4, "_sn"

    .line 172
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "_sc"

    .line 173
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_si"

    .line 174
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 175
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v4, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v15, v11

    goto :goto_5

    :cond_e
    :goto_4
    move-object v15, v4

    :goto_5
    if-nez v15, :cond_f

    move-object/from16 v4, v18

    goto :goto_6

    :cond_f
    move-object v4, v15

    .line 179
    :goto_6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfk;->h()Ljava/security/SecureRandom;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v13

    .line 183
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 184
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 185
    array-length v12, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v12, :cond_12

    aget-object v9, v5, v11

    .line 186
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-object/from16 v19, v15

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 189
    array-length v7, v15

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x0

    .line 190
    :goto_8
    array-length v3, v15

    if-ge v7, v3, :cond_10

    .line 191
    aget-object v3, v15, v7

    move-object/from16 v21, v15

    const/4 v15, 0x1

    .line 192
    invoke-static {v4, v3, v15}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v18

    const-string v20, "_ep"

    const/16 v22, 0x0

    move-object/from16 v23, v9

    move-object/from16 v9, v18

    move/from16 v24, v10

    move-object/from16 v10, p9

    move/from16 v18, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object v12, v3

    move-object/from16 v25, v4

    move-wide v3, v13

    move-object v13, v0

    move/from16 v14, p8

    move-object/from16 v26, v0

    move-object/from16 v27, v5

    move-object/from16 v0, v19

    move-object/from16 v5, v21

    const/16 v19, 0x1

    move/from16 v15, v22

    .line 195
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "_en"

    .line 196
    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_eid"

    .line 197
    invoke-virtual {v9, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "_gn"

    move-object/from16 v11, v23

    .line 198
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_ll"

    .line 199
    array-length v12, v5

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "_i"

    .line 200
    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v0

    move-wide v13, v3

    move-object v15, v5

    move-object v9, v11

    move/from16 v11, v18

    move/from16 v12, v20

    move/from16 v10, v24

    move-object/from16 v4, v25

    move-object/from16 v0, v26

    move-object/from16 v5, v27

    goto :goto_8

    :cond_10
    move-object/from16 v26, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move/from16 v24, v10

    move/from16 v18, v11

    move/from16 v20, v12

    move-wide v3, v13

    move-object v5, v15

    move-object/from16 v0, v19

    const/16 v19, 0x1

    .line 203
    array-length v5, v5

    move/from16 v7, v24

    add-int v10, v7, v5

    goto :goto_9

    :cond_11
    move-object/from16 v26, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move v7, v10

    move/from16 v18, v11

    move/from16 v20, v12

    move-wide v3, v13

    move-object/from16 v0, v19

    const/16 v19, 0x1

    :goto_9
    add-int/lit8 v11, v18, 0x1

    move-object v15, v0

    move-wide v13, v3

    move/from16 v12, v20

    move-object/from16 v4, v25

    move-object/from16 v0, v26

    move-object/from16 v5, v27

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_12
    move v7, v10

    move-wide v3, v13

    move-object v0, v15

    const/16 v19, 0x1

    if-eqz v7, :cond_13

    const-string v5, "_eid"

    .line 206
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_epc"

    .line 207
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    const/4 v9, 0x0

    .line 208
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_18

    .line 209
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v9, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_15

    const-string v3, "_ep"

    goto :goto_c

    :cond_15
    move-object v3, v6

    :goto_c
    const-string v4, "_o"

    .line 212
    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_16

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_16
    move-object v11, v2

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Logging event (FE)"

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzan;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-virtual {v2, v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzad;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v4, v11}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    move-object v2, v12

    move-object/from16 v5, p1

    move-object v13, v6

    const/4 v14, 0x1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    move-object/from16 v15, p9

    invoke-virtual {v2, v12, v15}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    if-nez v17, :cond_17

    .line 224
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    .line 225
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p3

    .line 226
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_d

    :cond_17
    add-int/lit8 v9, v9, 0x1

    move-object v6, v13

    const/16 v19, 0x1

    goto/16 :goto_a

    :cond_18
    move-object v13, v6

    const/4 v14, 0x1

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->x()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "_ae"

    .line 232
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)Z

    :cond_19
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 290
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzcv;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzcv;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 291
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 552
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 554
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 557
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 558
    monitor-enter v6

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 560
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzdc;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzdc;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p2, 0x1388

    .line 562
    :try_start_1
    invoke-virtual {v6, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 565
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 566
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Interrupted waiting for get conditional user properties"

    .line 567
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 568
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 573
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzl;

    .line 575
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    .line 576
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 577
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    .line 578
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->d:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    .line 579
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 580
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 581
    iget-boolean v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->e:Z

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    .line 582
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    .line 583
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->g:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->g:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    .line 585
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->g:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v1, :cond_3

    .line 586
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->g:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->b()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    .line 587
    :cond_3
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->h:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    .line 588
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->i:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_4

    .line 589
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->i:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    .line 590
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->i:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v1, :cond_4

    .line 591
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->i:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->b()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    .line 592
    :cond_4
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzfh;->b:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    .line 593
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->j:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    .line 594
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->k:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_5

    .line 595
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->k:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    .line 596
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->k:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v1, :cond_5

    .line 597
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzl;->k:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaa;->b()Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    .line 598
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 568
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 609
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 612
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 613
    monitor-enter v7

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 615
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzde;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzde;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x1388

    .line 617
    :try_start_1
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 620
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 626
    :cond_2
    new-instance p2, Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 627
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzfh;

    .line 628
    iget-object p4, p3, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p2

    :catchall_0
    move-exception p1

    .line 621
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    .line 671
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->e(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    .line 244
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzcu;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzcu;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 246
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 491
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    .line 493
    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 494
    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 495
    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    .line 497
    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    .line 498
    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzdb;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzdb;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 500
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 433
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    .line 438
    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 439
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Invalid conditional user property name"

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v2, "Invalid conditional user property value"

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v2, "Unable to normalize conditional user property value"

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 461
    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 462
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    .line 463
    iget-object v3, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    .line 464
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x1

    const-wide v6, 0x39ef8b000L

    if-nez v3, :cond_4

    cmp-long v3, v1, v6

    if-gtz v3, :cond_3

    cmp-long v3, v1, v4

    if-gez v3, :cond_4

    .line 466
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v3, "Invalid conditional user property timeout"

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 470
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 472
    :cond_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_6

    cmp-long v3, v1, v4

    if-gez v3, :cond_5

    goto :goto_0

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzda;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzda;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 481
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void

    .line 474
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v3, "Invalid conditional user property time to live"

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 478
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final c(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzba;->b(Z)V

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->C()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 508
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Conditional property not sent since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 513
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 514
    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v14

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 517
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v11

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v15

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 520
    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v24, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v18, v9

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v10, v24

    move-object v0, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzl;)V

    return-void

    :catch_0
    return-void
.end method

.method private final e(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 529
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    .line 531
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Conditional property not cleared since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 534
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 536
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v14, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 537
    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v14, 0x0

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v20, v11

    const/4 v0, 0x0

    move-object v11, v0

    move-wide/from16 v12, v18

    move-object v0, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzl;)V

    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->w()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->y()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 641
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 644
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 546
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->a()V

    .line 548
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 603
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->a()V

    .line 605
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    const/4 v0, 0x0

    .line 602
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 646
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2

    .line 417
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 419
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 420
    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    .line 423
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 424
    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 425
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 363
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    move-object v10, p0

    .line 79
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzcs;->c:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 80
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    const/4 v0, 0x1

    if-eqz p5, :cond_3

    move-object v10, p0

    .line 240
    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzcs;->c:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v2, :cond_4

    .line 241
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object v10, p0

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    xor-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    .line 242
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 298
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->am:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_ap"

    .line 299
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "auto"

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 301
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    .line 302
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v3, v1

    .line 305
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 306
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->n:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 307
    move-object v3, p3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    const-string v1, "true"

    goto :goto_2

    :cond_2
    const-string v1, "false"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-nez p3, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->n:Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v1, "unset"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->a(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzcw;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    const-string v0, "_ap"

    .line 312
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :goto_3
    move-object v5, p3

    .line 314
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result p3

    if-nez p3, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->H()Z

    move-result p3

    if-nez p3, :cond_7

    return-void

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 320
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Setting user property (FE)"

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzfh;

    move-object v1, p3

    move-object v2, p2

    move-wide v3, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzfh;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "app"

    :cond_0
    move-object v1, p1

    const/4 p1, 0x6

    const/4 v0, 0x0

    const/16 v2, 0x18

    if-nez p4, :cond_5

    const-string p4, "_ap"

    .line 252
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p4

    const-string v3, "user property"

    .line 255
    invoke-virtual {p4, v3, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "user property"

    .line 257
    sget-object v4, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->a:[Ljava/lang/String;

    invoke-virtual {p4, v3, v4, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 p1, 0xf

    goto :goto_1

    :cond_3
    const-string v3, "user property"

    .line 259
    invoke-virtual {p4, v3, v2, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 253
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const/4 p4, 0x1

    if-eqz p1, :cond_7

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {p2, v2, p4}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_6

    .line 266
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 267
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 268
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p2

    const-string p4, "_ev"

    .line 269
    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_7
    if-eqz p3, :cond_c

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 275
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {p2, v2, p4}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 277
    instance-of p4, p3, Ljava/lang/String;

    if-nez p4, :cond_8

    instance-of p4, p3, Ljava/lang/CharSequence;

    if-eqz p4, :cond_9

    .line 278
    :cond_8
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 279
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    :cond_9
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 281
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p3

    const-string p4, "_ev"

    .line 282
    invoke-virtual {p3, p1, p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 284
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 486
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->a()V

    .line 488
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdi;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Z)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 647
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    .line 427
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->a()V

    .line 430
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdj;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Z)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 648
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 649
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 650
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 651
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 652
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 653
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 654
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 655
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 656
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 657
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 658
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 659
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 660
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 661
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 662
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 663
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 664
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 665
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 666
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final y()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 384
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->H()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->z()V

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->b:Z

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->k()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->A()V

    .line 392
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 395
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    .line 396
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->w()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->y()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
