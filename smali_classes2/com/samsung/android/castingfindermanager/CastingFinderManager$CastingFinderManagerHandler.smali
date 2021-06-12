.class final Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/CastingFinderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CastingFinderManagerHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/castingfindermanager/CastingFinderManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Landroid/os/Handler;)V
    .locals 0

    .line 510
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 511
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;)V
    .locals 0

    .line 505
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Landroid/os/Handler;)V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->b:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 0

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->b:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;ILjava/lang/Object;)V
    .locals 0

    .line 505
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    if-nez v0, :cond_0

    const-string p1, "CastingFinder1.0.5"

    const-string v0, "reference is null"

    .line 534
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 559
    :pswitch_1
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 556
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Z)V

    goto :goto_0

    .line 550
    :pswitch_3
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 547
    :pswitch_4
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 553
    :pswitch_5
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 544
    :pswitch_6
    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    goto :goto_0

    .line 539
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->b:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->b:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;->onDevicesAvailable(Z)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
