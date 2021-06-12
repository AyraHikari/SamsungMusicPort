.class Lcom/mapps/android/view/AdView$SDKView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2209
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->playSoundEffect(I)V

    .line 2210
    invoke-static {}, Lcom/mapps/android/view/AdView;->access$41()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$3(Lcom/mapps/android/view/AdView$SDKView;)V

    goto :goto_0

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)V

    :goto_0
    const/4 v0, 0x1

    .line 2215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKView$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
