.class public abstract Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/IMilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.IMilkService"

.field static final TRANSACTION_checkPermissionAllGranted:I = 0xa

.field static final TRANSACTION_checkSubscriptionUser:I = 0x8

.field static final TRANSACTION_drmLicenseExpiredTest:I = 0x9

.field static final TRANSACTION_getAccessToken:I = 0x5

.field static final TRANSACTION_getHttpsUrl:I = 0xc

.field static final TRANSACTION_getServerUrl:I = 0x10

.field static final TRANSACTION_getUser:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_requestLogin:I = 0x4

.field static final TRANSACTION_setSaAccessToken:I = 0xf

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_syncFavorites:I = 0xe

.field static final TRANSACTION_syncPlaylists:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_updateLegalInfo:I = 0xb

.field static final TRANSACTION_updateUserInfo:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.music.service.milk.IMilkService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.music.service.milk.IMilkService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/music/service/milk/IMilkService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.app.music.service.milk.IMilkService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 207
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getServerUrl()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 196
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->setSaAccessToken(ILjava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 189
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->syncFavorites()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 182
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->syncPlaylists()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 174
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getHttpsUrl()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 158
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateLegalInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 151
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkPermissionAllGranted()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 141
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->drmLicenseExpiredTest(I)Z

    move-result p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 131
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkSubscriptionUser(I)I

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 115
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getUser(I)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, p3, v2}, Lcom/samsung/android/app/music/model/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 96
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/samsung/android/app/music/model/PushInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/PushInfo;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0, p1, p4, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)I

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 86
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAccessToken(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 74
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 79
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->requestLogin(IZ)I

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 67
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->stop()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 58
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method
