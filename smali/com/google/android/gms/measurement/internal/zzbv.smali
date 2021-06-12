.class public final Lcom/google/android/gms/measurement/internal/zzbv;
.super Lcom/google/android/gms/measurement/internal/zzah;


# instance fields
.field private final zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzaql:Ljava/lang/Boolean;

.field private zzaqm:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->h()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzh;->r:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private final zzc(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 109
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->n()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 113
    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/UidVerifier;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 114
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->n()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 117
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    .line 118
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    .line 119
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 120
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->n()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 122
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    .line 124
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 125
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 126
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 133
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    throw p2

    .line 105
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Measurement Service called without app package"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zze(Ljava/lang/Runnable;)V
    .locals 1

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->aa:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzh;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzh;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcl;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 83
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzfj;

    if-nez p2, :cond_1

    .line 86
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzh;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcd;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcd;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 195
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 197
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcc;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 178
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 179
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfj;

    if-nez p4, :cond_1

    .line 181
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    .line 186
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 187
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 188
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string p4, "Failed to get user attributes. appId"

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzh;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcb;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcb;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 160
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 161
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfj;

    if-nez p3, :cond_1

    .line 163
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 168
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 169
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to get user attributes. appId"

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    .line 171
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 172
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 135
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzcn;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzcn;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcg;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 35
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzch;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzch;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcj;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzck;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzck;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 98
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcm;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 142
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 143
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    .line 144
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 145
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbx;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzbx;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzby;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzby;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)[B
    .locals 10
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->g()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 46
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzci;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzci;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzbo;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 49
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 52
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 55
    new-array v4, v4, [B

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfa;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfa;->g()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    sub-long/2addr v5, v0

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfa;->g()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 8

    const-string v0, "_cmp"

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "referrer broadcast"

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "referrer API"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->b()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzn;->m(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v3, "_cmpx"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzad;->b:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzad;->c:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzad;->d:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 151
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 152
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzl;->c:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 153
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbz;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbz;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 154
    :cond_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzca;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzca;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfa;->d(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 207
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 208
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcf;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzce;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzce;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 203
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 205
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfa;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
