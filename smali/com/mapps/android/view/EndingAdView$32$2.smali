.class Lcom/mapps/android/view/EndingAdView$32$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$32;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$32;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$32;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "timeout check"

    .line 1460
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$49(Lcom/mapps/android/view/EndingAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timeout check  false"

    .line 1463
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->removeView(Landroid/view/View;)V

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    .line 1468
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    const/16 v1, -0x384

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_1

    .line 1470
    :cond_1
    invoke-static {}, Lcom/mapps/android/view/EndingAdView;->access$44()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    if-ne v0, v1, :cond_2

    .line 1471
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$8(Lcom/mapps/android/view/EndingAdView;Z)V

    goto :goto_0

    .line 1473
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$10(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTEnd;)V

    :goto_0
    const-string v0, "timeout check  true"

    .line 1476
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1478
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$2;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$50(Lcom/mapps/android/view/EndingAdView;)V

    return-void
.end method
