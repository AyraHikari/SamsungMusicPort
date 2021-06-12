.class Lcom/mapps/android/view/InterstitialView$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->createCloseBtn(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;

.field private final synthetic val$root:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$5;->val$root:Landroid/widget/RelativeLayout;

    .line 501
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$5;)Lcom/mapps/android/view/InterstitialView;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 505
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 506
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$5;->val$root:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/InterstitialView;->access$12(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mapps/android/view/InterstitialView;->setCloseImageInfo(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$12(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/InterstitialView$5$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$5$1;-><init>(Lcom/mapps/android/view/InterstitialView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
