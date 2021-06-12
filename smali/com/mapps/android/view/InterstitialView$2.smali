.class Lcom/mapps/android/view/InterstitialView$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/InterstitialView;
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
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 598
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$2;)Lcom/mapps/android/view/InterstitialView;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 602
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 635
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$0(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$0(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Ssp_imp"

    .line 636
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$0(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$1(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$1(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dsp_imp"

    .line 641
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$1(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 644
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v1}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$3(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mapps/android/view/InterstitialView;->access$4(Lcom/mapps/android/view/InterstitialView;I)V

    .line 646
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$5(Lcom/mapps/android/view/InterstitialView;)V

    .line 647
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/mapps/android/view/InterstitialView$2$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$2$1;-><init>(Lcom/mapps/android/view/InterstitialView$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
