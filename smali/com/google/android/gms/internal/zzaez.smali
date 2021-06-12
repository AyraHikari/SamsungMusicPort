.class public final Lcom/google/android/gms/internal/zzaez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/zzaey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfn;->zzd(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v8, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzaf(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/zzaey;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/zzaey;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZ)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/internal/zzaey;

    return-object p1
.end method
