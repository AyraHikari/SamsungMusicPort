.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverStateListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_ATTACH_STATE_CHANGE:I = 0x1

.field private static final MSG_LISTEN_COVER_SWITCH_STATE_CHANGE:I = 0x0

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

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
    new-instance p3, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    return-object p0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
