.class public abstract Lcom/google/android/gms/internal/zzpr;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/android/gms/internal/zzpq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzpr;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzpq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzpq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzps;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzps;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    return p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpr;->getScale()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpr;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzew;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpr;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
