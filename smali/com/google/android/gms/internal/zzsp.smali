.class final Lcom/google/android/gms/internal/zzsp;
.super Lcom/google/android/gms/internal/zzob;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsp;->a:Lcom/google/android/gms/internal/zzse;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzob;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zznx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzsq;-><init>(Lcom/google/android/gms/internal/zzsp;Lcom/google/android/gms/internal/zznx;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
