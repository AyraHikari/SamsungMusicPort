.class final Lcom/google/android/gms/internal/zzsz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzst;)V
    .locals 0

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

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->e:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zztd;->e:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method
