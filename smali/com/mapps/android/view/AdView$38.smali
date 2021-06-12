.class Lcom/mapps/android/view/AdView$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->getReloadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$38;->val$urlStr:Ljava/lang/String;

    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2601
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->val$urlStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 2603
    check-cast v0, Ljava/io/InputStream;

    .line 2604
    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, v1, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, v1, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2606
    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    iput-object v2, v1, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 2609
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x8

    .line 2610
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2611
    iget-object v3, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2613
    :catch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 2614
    iget-object v0, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v1, -0x384

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    :goto_0
    return-void
.end method
