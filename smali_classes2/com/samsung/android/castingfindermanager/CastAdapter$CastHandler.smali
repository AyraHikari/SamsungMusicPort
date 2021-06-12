.class final Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/CastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CastHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/castingfindermanager/CastAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/castingfindermanager/CastAdapter;Landroid/os/Handler;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastAdapter;

    if-nez v0, :cond_0

    const-string p1, "CastAdapter"

    const-string v0, "reference is null"

    .line 305
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 315
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    invoke-interface {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;->a()V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    invoke-interface {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;->b()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
