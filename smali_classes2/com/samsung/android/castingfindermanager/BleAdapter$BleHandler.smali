.class final Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/BleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BleHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/castingfindermanager/BleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/castingfindermanager/BleAdapter;Landroid/os/Handler;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 255
    iput p2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    .line 259
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;I)V
    .locals 1

    .line 263
    iget v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    .line 264
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/BleAdapter;

    if-nez v0, :cond_0

    const-string p1, "BleAdapter"

    const-string v0, "reference is null"

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 300
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/castingfindermanager/BleDevice;

    .line 301
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleAdapter;Lcom/samsung/android/castingfindermanager/BleDevice;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BleAdapter"

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBleDeviceRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;->b(Lcom/samsung/android/castingfindermanager/Device;)V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/castingfindermanager/BleDevice;

    .line 294
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->c:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleAdapter;Lcom/samsung/android/castingfindermanager/BleDevice;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BleAdapter"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBleDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->b:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;->a(Lcom/samsung/android/castingfindermanager/Device;)V

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/castingfindermanager/BleDevice;

    const-string v1, "BleAdapter"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailableTimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->e(Lcom/samsung/android/castingfindermanager/BleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-static {v0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleAdapter;Lcom/samsung/android/library/beaconmanager/Tv;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
