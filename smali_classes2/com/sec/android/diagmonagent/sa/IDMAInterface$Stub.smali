.class public abstract Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/diagmonagent/sa/IDMAInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/sa/IDMAInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.diagmonagent.sa.IDMAInterface"

.field static final TRANSACTION_checkToken:I = 0x1

.field static final TRANSACTION_sendCommon:I = 0x2

.field static final TRANSACTION_sendLog:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 73
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 84
    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->sendLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    const-string p1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 57
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->sendCommon(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    const-string p1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 49
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->checkToken()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
