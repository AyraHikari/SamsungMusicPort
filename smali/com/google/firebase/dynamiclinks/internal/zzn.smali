.class public abstract Lcom/google/firebase/dynamiclinks/internal/zzn;
.super Lcom/google/android/gms/internal/firebase_dynamic_links/zzb;

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/zzm;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_dynamic_links/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 8
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_dynamic_links/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 9
    sget-object p3, Lcom/google/firebase/dynamiclinks/internal/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_dynamic_links/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/dynamiclinks/internal/zzq;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/zzn;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/zzq;)V

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_dynamic_links/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 5
    sget-object p3, Lcom/google/firebase/dynamiclinks/internal/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_dynamic_links/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/dynamiclinks/internal/zza;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/zzn;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/zza;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
