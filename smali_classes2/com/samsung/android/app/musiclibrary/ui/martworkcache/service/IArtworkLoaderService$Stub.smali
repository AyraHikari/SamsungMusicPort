.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

.field static final TRANSACTION_addToDiskCache:I = 0x2

.field static final TRANSACTION_clearDiskCache:I = 0x3

.field static final TRANSACTION_loadArtwork:I = 0x1

.field static final TRANSACTION_removeFromDiskCache:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->removeFromDiskCache(Landroid/net/Uri;I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 93
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->clearDiskCache()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 73
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 87
    invoke-virtual {p0, v1, p1, p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->addToDiskCache(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 60
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->loadArtwork(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1, p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 43
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
