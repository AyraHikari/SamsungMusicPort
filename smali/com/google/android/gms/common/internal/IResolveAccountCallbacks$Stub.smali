.class public abstract Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub;
.super Lcom/google/android/gms/internal/base/zab;

# interfaces
.implements Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IResolveAccountCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IResolveAccountCallbacks"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    .line 10
    sget-object p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub;->onAccountResolutionComplete(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
