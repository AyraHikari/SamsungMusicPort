.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayQueue"

.field static final TRANSACTION_add:I = 0x3

.field static final TRANSACTION_move:I = 0x6

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_openPosition:I = 0x2

.field static final TRANSACTION_removeByIds:I = 0x5

.field static final TRANSACTION_removeByPosition:I = 0x4

.field static final TRANSACTION_toggleMode:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayQueue"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayQueue"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayQueue"

    const v3, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->toggleMode(I)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 136
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->move(II)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 127
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->removeByIds([J)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 118
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->removeByPosition([I)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 94
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 104
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object v11, v4

    :goto_1
    move-object v0, p0

    move v1, v2

    move v2, v5

    move-object v3, v6

    move v4, v7

    move v5, v8

    move-object v6, v11

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->add(II[JZILandroid/os/Bundle;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 81
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 88
    :cond_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->openPosition(IIZ)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 48
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v4

    .line 65
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 69
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v13, v0

    goto :goto_4

    :cond_5
    move-object v13, v4

    :goto_4
    move-object v0, p0

    move v1, v2

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v11

    move v7, v12

    move-object v8, v13

    .line 75
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->open(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;IZLandroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_6
    move-object/from16 v0, p3

    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

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
