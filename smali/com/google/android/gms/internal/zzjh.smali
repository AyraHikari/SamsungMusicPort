.class public final Lcom/google/android/gms/internal/zzjh;
.super Lcom/google/android/gms/dynamic/zzp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzp<",
        "Lcom/google/android/gms/internal/zzkq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzp;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;)Lcom/google/android/gms/internal/zzkn;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/zzp;->zzde(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzkq;

    const v2, 0xb5bb70

    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/zzkq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/zzkn;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/zzkn;

    return-object p2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/zzkp;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzkp;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzq; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "Could not create remote builder for AdLoader."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
