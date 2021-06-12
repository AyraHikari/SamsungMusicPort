.class final Lcom/google/android/gms/internal/zzabp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzafp;

.field private synthetic b:Lcom/google/android/gms/internal/zzabo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/internal/zzafp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabp;->b:Lcom/google/android/gms/internal/zzabo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabp;->a:Lcom/google/android/gms/internal/zzafp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->b:Lcom/google/android/gms/internal/zzabo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabo;->a(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/internal/zzzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabp;->a:Lcom/google/android/gms/internal/zzafp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzafp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->b:Lcom/google/android/gms/internal/zzabo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabo;->b(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->b:Lcom/google/android/gms/internal/zzabo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabo;->b(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzaa;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->b:Lcom/google/android/gms/internal/zzabo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzabo;->a(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzaa;

    :cond_0
    return-void
.end method
