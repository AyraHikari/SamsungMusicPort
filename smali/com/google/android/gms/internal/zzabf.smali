.class public abstract Lcom/google/android/gms/internal/zzabf;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/android/gms/internal/zzabe;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzabf;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/zzaax;->a:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzabf;->zza(Lcom/google/android/gms/internal/zzaax;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
