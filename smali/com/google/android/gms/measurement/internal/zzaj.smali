.class public final Lcom/google/android/gms/measurement/internal/zzaj;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    return-void
.end method

.method private final C()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    .line 166
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 167
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    .line 174
    new-array v4, v6, [Ljava/lang/Class;

    .line 175
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 178
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->k()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    .line 172
    :catch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    :catch_2
    return-object v0
.end method


# virtual methods
.method final A()I
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 187
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->c:I

    return v0
.end method

.method final B()I
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 189
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->h:I

    return v0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 29
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 107
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzh;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 112
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaj;->b:Ljava/lang/String;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->A()I

    move-result v1

    int-to-long v5, v1

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 117
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzaj;->d:Ljava/lang/String;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzn;->f()J

    move-result-wide v8

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 124
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->f:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_0

    .line 125
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->f:J

    .line 126
    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->f:J

    .line 127
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v13

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->q:Z

    const/4 v12, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/zzn;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->C()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v15, v1

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    move/from16 v26, v14

    move-object/from16 v27, v15

    .line 140
    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzaj;->g:J

    .line 141
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->D()J

    move-result-wide v18

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->B()I

    move-result v20

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    const-string v12, "google_analytics_adid_collection_enabled"

    .line 146
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->b()V

    const-string v12, "google_analytics_ssaid_collection_enabled"

    .line 151
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v28, 0x1

    :goto_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->v()Z

    move-result v23

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v1, v25

    move-object/from16 v12, p1

    move-wide/from16 v16, v14

    move/from16 v14, v26

    move-object/from16 v15, v27

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v25
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 193
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 208
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 210
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final w()V
    .locals 10

    const-string v0, "unknown"

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-nez v4, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v7, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 14
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 18
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    .line 23
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, ""

    .line 25
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 27
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 30
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 31
    :cond_3
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 32
    :try_start_2
    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v1

    move-object v1, v4

    goto :goto_2

    :catch_1
    move-object v1, v4

    .line 35
    :catch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v7, "Error retrieving package info. appId, appName"

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 38
    invoke-virtual {v4, v7, v8, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->d:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->b:Ljava/lang/String;

    .line 42
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzaj;->c:I

    .line 43
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->f:J

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleServices;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 49
    :goto_3
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "am"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v6, v7

    if-nez v6, :cond_8

    if-nez v2, :cond_7

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v7, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 56
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "GoogleService failed to initialize, status"

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->b()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v7, v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    if-eqz v6, :cond_c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzn;->i()Ljava/lang/Boolean;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzn;->h()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_deactivated=1"

    .line 68
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    .line 69
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_enabled=0"

    .line 73
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    if-nez v2, :cond_b

    .line 75
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 79
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "Collection enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v4, 0x0

    :goto_7
    const-string v2, ""

    .line 80
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->i:Ljava/lang/String;

    const-string v2, ""

    .line 81
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->j:Ljava/lang/String;

    .line 82
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->g:J

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "am"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->j:Ljava/lang/String;

    .line 87
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->a()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    goto :goto_8

    :cond_e
    move-object v1, v0

    :goto_8
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->i:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 90
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v1, "gma_app_id"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->j:Ljava/lang/String;

    :cond_f
    if-eqz v4, :cond_10

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzaj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    .line 98
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_10
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->h:I

    return-void

    .line 103
    :cond_11
    iput v5, p0, Lcom/google/android/gms/measurement/internal/zzaj;->h:I

    return-void
.end method

.method final x()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    return-object v0
.end method

.method final y()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->i:Ljava/lang/String;

    return-object v0
.end method

.method final z()Ljava/lang/String;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->j:Ljava/lang/String;

    return-object v0
.end method
