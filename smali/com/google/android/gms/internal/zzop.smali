.class final Lcom/google/android/gms/internal/zzop;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzon;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop;->a:Lcom/google/android/gms/internal/zzon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->a:Lcom/google/android/gms/internal/zzon;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzon;->zza(Lcom/google/android/gms/internal/zzon;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->a:Lcom/google/android/gms/internal/zzon;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzon;->zza(Lcom/google/android/gms/internal/zzon;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->a:Lcom/google/android/gms/internal/zzon;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzon;->zza(Lcom/google/android/gms/internal/zzon;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzop;->a:Lcom/google/android/gms/internal/zzon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/internal/zzos;)Lcom/google/android/gms/internal/zzos;

    return-void
.end method
