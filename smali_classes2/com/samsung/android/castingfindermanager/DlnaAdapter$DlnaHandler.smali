.class final Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/DlnaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DlnaHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/castingfindermanager/DlnaAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Landroid/os/Handler;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 274
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reference is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 353
    :pswitch_0
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/castingfindermanager/Dlna;

    .line 354
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add Device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->e()Lcom/samsung/android/allshare/Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->e()Lcom/samsung/android/allshare/Device;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 346
    :pswitch_1
    new-instance v1, Lcom/samsung/android/castingfindermanager/Dlna;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/allshare/Device;

    invoke-direct {v1, p1}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;)V

    .line 347
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceRemoved - onDlnaDeviceChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->g()I

    move-result p1

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->g(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 349
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;->b(Lcom/samsung/android/castingfindermanager/Dlna;)V

    goto/16 :goto_3

    .line 335
    :pswitch_2
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->g(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)I

    move-result v1

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 336
    new-instance v1, Lcom/samsung/android/castingfindermanager/Dlna;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/allshare/Device;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;I)V

    goto :goto_1

    .line 338
    :cond_1
    new-instance v1, Lcom/samsung/android/castingfindermanager/Dlna;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/allshare/Device;

    invoke-direct {v1, p1}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;)V

    .line 340
    :goto_1
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAdded - onDlnaDeviceChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->g()I

    move-result p1

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->g(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 342
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;->a(Lcom/samsung/android/castingfindermanager/Dlna;)V

    goto/16 :goto_3

    .line 328
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDeleted"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 330
    invoke-static {v0, v2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 331
    invoke-virtual {p0, v2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 302
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onCreated"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 303
    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;I)I

    .line 304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 305
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 306
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    goto/16 :goto_3

    .line 307
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 308
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .line 309
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 310
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 311
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 312
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->b:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    if-eqz p1, :cond_4

    .line 314
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/castingfindermanager/Dlna;

    .line 315
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add Device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->e()Lcom/samsung/android/allshare/Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/Dlna;->e()Lcom/samsung/android/allshare/Device;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_2

    .line 318
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 320
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 323
    :cond_5
    invoke-static {}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mDlnaDeviceFinder is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
