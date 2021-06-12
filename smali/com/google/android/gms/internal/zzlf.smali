.class public final Lcom/google/android/gms/internal/zzlf;
.super Lcom/google/android/gms/internal/zzeu;

# interfaces
.implements Lcom/google/android/gms/internal/zzld;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeu;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeu;->zzbe()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzeu;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v1
.end method
