.class public abstract Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.IMilkServiceCallback"

.field static final TRANSACTION_onServiceResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.music.service.milk.IMilkServiceCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.music.service.milk.IMilkServiceCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.samsung.android.app.music.service.milk.IMilkServiceCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 48
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->onServiceResult(IIILandroid/content/Intent;)V

    return v1
.end method
