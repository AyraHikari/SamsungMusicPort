.class public abstract Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

.field static final TRANSACTION_getAllSessionInfo:I = 0xd

.field static final TRANSACTION_getContinuityDevices:I = 0xa

.field static final TRANSACTION_getContinuityProvider:I = 0x9

.field static final TRANSACTION_getContinuityProviders:I = 0x7

.field static final TRANSACTION_getContinuityProvidersFromDevice:I = 0x8

.field static final TRANSACTION_getDevices:I = 0x4

.field static final TRANSACTION_getSessionInfo:I = 0xe

.field static final TRANSACTION_getUserState:I = 0xf

.field static final TRANSACTION_isSignedIn:I = 0x1

.field static final TRANSACTION_play:I = 0xb

.field static final TRANSACTION_registerDeviceListener:I = 0x5

.field static final TRANSACTION_registerSignInListener:I = 0x2

.field static final TRANSACTION_stop:I = 0xc

.field static final TRANSACTION_unregisterDeviceListener:I = 0x6

.field static final TRANSACTION_unregisterSignInListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 197
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    sget-object p1, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 206
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;

    move-result-object p2

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getUserState(Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;)V

    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuitySession;

    move-result-object p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p1, p3, v1}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuitySession;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :pswitch_2
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 171
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getAllSessionInfo()Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_3
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 157
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;

    move-result-object p2

    .line 166
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->stop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;)V

    return v1

    :pswitch_4
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;)V

    return v1

    :pswitch_5
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 133
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getContinuityDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_6
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getContinuityProvider(Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, p3, v1}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    :pswitch_7
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 107
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getContinuityProvidersFromDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_8
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 99
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getContinuityProviders()Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_9
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->unregisterDeviceListener(Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;)V

    return v1

    :pswitch_a
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->registerDeviceListener(ILcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;)V

    return v1

    :pswitch_b
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->getDevices(I)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_c
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->unregisterSignInListener(Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;)V

    return v1

    :pswitch_d
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->registerSignInListener(Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;)V

    return v1

    :pswitch_e
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->isSignedIn()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_3
    const-string p1, "com.samsung.android.oneconnect.external.interfaces.IContinuityService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
