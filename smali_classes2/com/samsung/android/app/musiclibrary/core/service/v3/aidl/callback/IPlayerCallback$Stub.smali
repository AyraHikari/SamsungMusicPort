.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.service.v3.aidl.callback.IPlayerCallback"

.field static final TRANSACTION_onExtrasChanged:I = 0x5

.field static final TRANSACTION_onMetaChanged:I = 0x1

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x2

.field static final TRANSACTION_onQueueChanged:I = 0x3

.field static final TRANSACTION_onQueueOptionChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.callback.IPlayerCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.callback.IPlayerCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.v3.aidl.callback.IPlayerCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 111
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 116
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 121
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 97
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object v1

    .line 105
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 76
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 85
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 86
    sget-object p4, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object v1

    .line 91
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    .line 70
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 51
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    .line 56
    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback$Stub;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
