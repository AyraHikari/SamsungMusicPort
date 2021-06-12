.class Lcom/mapps/android/view/EndingAdView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 1089
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

    .line 1093
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->onAdClick()V

    .line 1095
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->playSoundEffect(I)V

    .line 1096
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$37(Lcom/mapps/android/view/EndingAdView;)V

    :cond_0
    const/4 v0, 0x1

    .line 1098
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
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$25;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
