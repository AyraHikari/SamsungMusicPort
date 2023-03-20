.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

.field public final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    :cond_4
    :goto_0
    return-void
.end method
