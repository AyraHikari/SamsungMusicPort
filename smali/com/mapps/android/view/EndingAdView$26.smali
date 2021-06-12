.class Lcom/mapps/android/view/EndingAdView$26;
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
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListEndAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataIEndAD;

    .line 1123
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->d()Ljava/lang/String;

    move-result-object v0

    .line 1124
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2, v1}, Lcom/mapps/android/view/EndingAdView;->playSoundEffect(I)V

    .line 1125
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/EndingAdView;->onAdClick()V

    .line 1126
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$26;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/EndingAdView;->access$38(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1130
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
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$26;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
