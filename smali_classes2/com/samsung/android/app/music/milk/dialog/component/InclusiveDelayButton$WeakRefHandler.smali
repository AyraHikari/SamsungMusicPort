.class public Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakRefHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;->a(Landroid/os/Message;)V

    return-void
.end method
