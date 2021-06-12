.class final Lcom/google/android/gms/measurement/internal/zzg;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private final a:Lcom/google/android/gms/measurement/internal/zzbt;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzg;->b:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->z:Ljava/lang/String;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public final B()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 219
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->p:J

    return-wide v0
.end method

.method public final C()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 227
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->q:Z

    return v0
.end method

.method public final D()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 235
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->r:Z

    return v0
.end method

.method public final a()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    return-void
.end method

.method public final a(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 63
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->h:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 64
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->h:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->o:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 120
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->o:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->i:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 72
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->i:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 230
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->q:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 231
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->q:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 87
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->k:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 88
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->k:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->s:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->s:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 238
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->r:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 239
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->r:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 103
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->m:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 104
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->m:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->e:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->n:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 112
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->n:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->f:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(Z)V

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 125
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzg;->g:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 126
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->g:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->j:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->B:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 137
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->B:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 95
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->l:Ljava/lang/String;

    return-void
.end method

.method public final h()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 60
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->h:J

    return-wide v0
.end method

.method public final h(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->C:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 145
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->C:J

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 214
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->z:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 215
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->z:Ljava/lang/String;

    return-void
.end method

.method public final i()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 68
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->i:J

    return-wide v0
.end method

.method public final i(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 161
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->t:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 162
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->t:J

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 169
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->u:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 170
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->u:J

    return-void
.end method

.method public final k()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 84
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->k:J

    return-wide v0
.end method

.method public final k(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->v:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 178
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->v:J

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 185
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->w:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 186
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->w:J

    return-void
.end method

.method public final m()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->m:J

    return-wide v0
.end method

.method public final m(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 193
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->y:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 194
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->y:J

    return-void
.end method

.method public final n()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 108
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->n:J

    return-wide v0
.end method

.method public final n(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 201
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->x:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 202
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->x:J

    return-void
.end method

.method public final o(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 222
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->p:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 223
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->p:J

    return-void
.end method

.method public final o()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 116
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->o:Z

    return v0
.end method

.method public final p()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 130
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->g:J

    return-wide v0
.end method

.method public final q()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 133
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->B:J

    return-wide v0
.end method

.method public final r()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 141
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->C:J

    return-wide v0
.end method

.method public final s()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 149
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    .line 153
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->A:Z

    .line 154
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->g:J

    return-void
.end method

.method public final t()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 158
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->t:J

    return-wide v0
.end method

.method public final u()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 166
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->u:J

    return-wide v0
.end method

.method public final v()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 174
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->v:J

    return-wide v0
.end method

.method public final w()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 182
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->w:J

    return-wide v0
.end method

.method public final x()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 190
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->y:J

    return-wide v0
.end method

.method public final y()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 198
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->x:J

    return-wide v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->z:Ljava/lang/String;

    return-object v0
.end method
