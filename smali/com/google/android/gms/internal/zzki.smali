.class public abstract Lcom/google/android/gms/internal/zzki;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/android/gms/internal/zzkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzki;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdImpression()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdClicked()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdOpened()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdLoaded()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdLeftApplication()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzki;->onAdFailedToLoad(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->onAdClosed()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
