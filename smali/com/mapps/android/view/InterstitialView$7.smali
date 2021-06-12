.class Lcom/mapps/android/view/InterstitialView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->imageTypeSetting(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$19(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/InterstitialView;->access$20(Lcom/mapps/android/view/InterstitialView;Landroid/graphics/Bitmap;)V

    .line 584
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$3(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v1, v1, Lcom/mapps/android/view/InterstitialView;->showViewHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
