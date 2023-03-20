.class public abstract Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
.super Landroid/os/Binder;
.source "IPrivateModeClient.java"

# interfaces
.implements Lcom/samsung/android/privatemode/IPrivateModeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/privatemode/IPrivateModeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.privatemode.IPrivateModeClient"

.field public static final TRANSACTION_onStateChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.privatemode.IPrivateModeClient"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.privatemode.IPrivateModeClient"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/privatemode/IPrivateModeClient;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.privatemode.IPrivateModeClient"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V

    return v0
.end method
