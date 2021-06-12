.class public abstract Lcom/sec/android/app/billing/service/IBillingService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/billing/service/IBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/billing/service/IBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/billing/service/IBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.billing.service.IBillingService"

.field static final TRANSACTION_requestBilling:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.billing.service.IBillingService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/billing/service/IBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/billing/service/IBillingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.android.app.billing.service.IBillingService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sec/android/app/billing/service/IBillingService;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/sec/android/app/billing/service/IBillingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/billing/service/IBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "com.sec.android.app.billing.service.IBillingService"

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "com.sec.android.app.billing.service.IBillingService"

    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 55
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/android/app/billing/service/IBillingService$Stub;->requestBilling(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
