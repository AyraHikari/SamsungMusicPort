.class public abstract Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

.field static final TRANSACTION_getLastActiveState:I = 0x2

.field static final TRANSACTION_getLastPlayInfo:I = 0x1

.field static final TRANSACTION_isPlaying:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->isPlaying()Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 64
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->getLastActiveState()I

    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 50
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1, p3, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 45
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
