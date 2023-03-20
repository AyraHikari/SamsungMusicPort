.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverListenerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-nez p3, :cond_0

    .line 4
    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 5
    :goto_0
    new-instance p3, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-object p0
.end method


# virtual methods
.method public coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
