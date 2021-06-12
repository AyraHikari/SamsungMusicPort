.class Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onResponse(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.oneconnect.external.interfaces.IContinuityListener"

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
