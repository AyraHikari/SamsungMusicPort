.class final Lcom/google/android/gms/internal/zzsq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztc;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsp;Lcom/google/android/gms/internal/zznx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsq;->a:Lcom/google/android/gms/internal/zznx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zztd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->c:Lcom/google/android/gms/internal/zzoa;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zztd;->c:Lcom/google/android/gms/internal/zzoa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsq;->a:Lcom/google/android/gms/internal/zznx;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzoa;->zza(Lcom/google/android/gms/internal/zznx;)V

    :cond_0
    return-void
.end method
