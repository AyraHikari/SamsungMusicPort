.class Lcom/mapps/android/view/InterstitialView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->setLogoImageInfo(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;

.field private final synthetic val$root:Landroid/view/ViewGroup;

.field private final synthetic val$targetView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$4;->val$targetView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mapps/android/view/InterstitialView$4;->val$root:Landroid/view/ViewGroup;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$9(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$4;->val$root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/InterstitialView;->access$10(Lcom/mapps/android/view/InterstitialView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mapps/android/view/InterstitialView;->access$11(Lcom/mapps/android/view/InterstitialView;Landroid/view/ViewGroup;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$9(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
