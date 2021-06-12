.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 686
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/cover/CoverState;

    if-eqz p1, :cond_0

    .line 689
    new-instance v6, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .line 692
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    goto :goto_0

    :cond_0
    const-string p1, "ScoverManager"

    const-string v0, "coverState : null"

    .line 694
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
