.class Lcom/mapps/android/view/InterstitialView$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$9;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$9;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "timeout check"

    .line 882
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$24(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x384

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$24(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$25(Lcom/mapps/android/view/InterstitialView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "timeout check  false"

    .line 886
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$4(Lcom/mapps/android/view/InterstitialView;I)V

    .line 888
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "timeout check  true"

    .line 890
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "product_attr(\'FRONT MOVIE\' doesn\'t use \'TIMEOUT\'!) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$24(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$25(Lcom/mapps/android/view/InterstitialView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "timeout check  false"

    .line 897
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$4(Lcom/mapps/android/view/InterstitialView;I)V

    .line 899
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "timeout check  true"

    .line 901
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 904
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$1;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->timeoutHandlerRemove()V

    return-void
.end method
