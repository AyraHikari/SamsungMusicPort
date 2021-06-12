.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayer"

.field static final TRANSACTION_getMeta:I = 0x3

.field static final TRANSACTION_getPlayControl:I = 0x5

.field static final TRANSACTION_getPlayQueue:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x4

.field static final TRANSACTION_registerPlayerCallback:I = 0x1

.field static final TRANSACTION_sendCustom:I = 0x7

.field static final TRANSACTION_sendCustomWithBundle:I = 0x8

.field static final TRANSACTION_unregisterPlayerCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayer"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayer"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.IPlayer"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 126
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 131
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->sendCustomWithBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 110
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->sendCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 102
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->getPlayQueue()Landroid/os/IBinder;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 94
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->getPlayControl()Landroid/os/IBinder;

    move-result-object p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 80
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p1, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 66
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p1, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    .line 57
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
