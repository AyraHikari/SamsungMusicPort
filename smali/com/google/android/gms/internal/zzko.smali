.class public abstract Lcom/google/android/gms/internal/zzko;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/android/gms/internal/zzkn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzko;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrd;->zzs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzrc;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->a:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrg;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrf;

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/zzjn;->a:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzrf;Lcom/google/android/gms/internal/zzjn;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzld;

    if-eqz p4, :cond_2

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzld;

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/google/android/gms/internal/zzlf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzlf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzko;->zzb(Lcom/google/android/gms/internal/zzld;)V

    goto :goto_1

    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/zzpe;->a:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzpe;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/zzra;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqz;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzqx;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqw;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzko;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzqz;Lcom/google/android/gms/internal/zzqw;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqu;->zzp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzqt;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqr;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzqq;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzkh;

    if-eqz p4, :cond_4

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzkh;

    goto :goto_2

    :cond_4
    new-instance p4, Lcom/google/android/gms/internal/zzkj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzkj;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzko;->zzb(Lcom/google/android/gms/internal/zzkh;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzko;->zzdi()Lcom/google/android/gms/internal/zzkk;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
