.class final Lcom/google/android/gms/internal/zzka;
.super Lcom/google/android/gms/internal/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjr$zza<",
        "Lcom/google/android/gms/internal/zzxe;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lcom/google/android/gms/internal/zzjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjr;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka;->b:Lcom/google/android/gms/internal/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjr$zza;-><init>(Lcom/google/android/gms/internal/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->b:Lcom/google/android/gms/internal/zzjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjr;->d(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzxd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxd;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzxe;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->b:Lcom/google/android/gms/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->a:Landroid/app/Activity;

    const-string v2, "ad_overlay"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzjr;->a(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzla;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzla;->createAdOverlay(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzxe;

    move-result-object p1

    return-object p1
.end method
