.class Lcom/mapps/android/view/InterstitialView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->setCloseImageInfo(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;

.field private final synthetic val$root:Landroid/widget/RelativeLayout;

.field private final synthetic val$targetView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$6;->val$targetView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mapps/android/view/InterstitialView$6;->val$root:Landroid/widget/RelativeLayout;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object p0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$6;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$12(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView$6;->val$root:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/InterstitialView;->access$14(Lcom/mapps/android/view/InterstitialView;)I

    move-result v5

    invoke-static {v3, v4, v5, v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$15(Lcom/mapps/android/view/InterstitialView;Landroid/widget/RelativeLayout;III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$6$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$6$1;-><init>(Lcom/mapps/android/view/InterstitialView$6;)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$18(Lcom/mapps/android/view/InterstitialView;Ljava/lang/Runnable;)V

    .line 550
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$17(Lcom/mapps/android/view/InterstitialView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$6;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$16(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
