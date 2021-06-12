.class public final Lcom/google/android/gms/internal/zzpy;
.super Lcom/google/android/gms/internal/zzeu;

# interfaces
.implements Lcom/google/android/gms/internal/zzpx;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeu;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeu;->zzbe()Landroid/os/Parcel;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xb5bb70

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzeu;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
