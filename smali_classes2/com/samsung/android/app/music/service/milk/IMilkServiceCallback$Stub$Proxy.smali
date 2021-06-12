.class Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceResult(IIILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.app.music.service.milk.IMilkServiceCallback"

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
