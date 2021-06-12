.class public final Lcom/google/android/gms/internal/zzim;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/zzil;",
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
    .locals 17

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbfn;->zzd(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v8, v2

    move-wide v15, v8

    move-object v7, v4

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v13

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfn;->zzaf(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/zzil;

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/zzil;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/internal/zzil;

    return-object p1
.end method
