.class public abstract Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.downloadservice.IMilkDownloadService"

.field static final TRANSACTION_isDownloading:I = 0x8

.field static final TRANSACTION_removeItem:I = 0x5

.field static final TRANSACTION_resumeAll:I = 0x3

.field static final TRANSACTION_startAll:I = 0x1

.field static final TRANSACTION_startItem:I = 0x7

.field static final TRANSACTION_stopAll:I = 0x2

.field static final TRANSACTION_stopItem:I = 0x6

.field static final TRANSACTION_stopWorkingItem:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.music.service.milk.downloadservice.IMilkDownloadService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.music.service.milk.downloadservice.IMilkDownloadService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.music.service.milk.downloadservice.IMilkDownloadService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->isDownloading()Z

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 106
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->startItem(Ljava/lang/String;I)I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 94
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->stopItem(Ljava/lang/String;I)I

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 82
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->removeItem(Ljava/lang/String;I)I

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 74
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->stopWorkingItem()I

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 66
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->resumeAll()I

    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 58
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->stopAll()I

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 50
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->startAll()I

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

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
