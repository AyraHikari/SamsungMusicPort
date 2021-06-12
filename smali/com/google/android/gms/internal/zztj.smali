.class final Lcom/google/android/gms/internal/zztj;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/ads/internal/zzak;

.field b:Lcom/google/android/gms/internal/zzjj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/zzse;

.field d:J

.field e:Z

.field f:Z

.field private synthetic g:Lcom/google/android/gms/internal/zzti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zztj;->g:Lcom/google/android/gms/internal/zzti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzti;->a(Lcom/google/android/gms/internal/zzti;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzsd;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzak;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zztj;->a:Lcom/google/android/gms/ads/internal/zzak;

    new-instance p1, Lcom/google/android/gms/internal/zzse;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztj;->c:Lcom/google/android/gms/internal/zzse;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztj;->c:Lcom/google/android/gms/internal/zzse;

    iget-object p2, p0, Lcom/google/android/gms/internal/zztj;->a:Lcom/google/android/gms/ads/internal/zzak;

    new-instance v0, Lcom/google/android/gms/internal/zzsf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsf;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkh;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsn;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkx;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsp;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzoa;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsr;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzke;)V

    new-instance v0, Lcom/google/android/gms/internal/zzst;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzadp;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztj;-><init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zztj;->b:Lcom/google/android/gms/internal/zzjj;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztj;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->b:Lcom/google/android/gms/internal/zzjj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->b:Lcom/google/android/gms/internal/zzjj;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->g:Lcom/google/android/gms/internal/zzti;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzti;->b(Lcom/google/android/gms/internal/zzti;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->b(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztj;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztj;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztj;->e:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zztj;->d:J

    return v0
.end method
