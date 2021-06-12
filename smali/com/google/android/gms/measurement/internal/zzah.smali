.class public abstract Lcom/google/android/gms/measurement/internal/zzah;
.super Lcom/google/android/gms/internal/measurement/zzr;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzag;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 91
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzh;

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzah;->zzd(Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 79
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzh;

    .line 80
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 69
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 73
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 64
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzh;

    .line 65
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 57
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzl;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 52
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzl;

    .line 53
    sget-object p4, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzh;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 47
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzh;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzah;->zzc(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 34
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzad;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)[B

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 28
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzh;

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzh;Z)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 24
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzh;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 18
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzad;

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 14
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzh;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 9
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzfh;

    .line 10
    sget-object p4, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzh;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 4
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzad;

    .line 5
    sget-object p4, Lcom/google/android/gms/measurement/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/measurement/zzs;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzh;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
