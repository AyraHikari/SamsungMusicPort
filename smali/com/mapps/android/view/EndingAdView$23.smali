.class Lcom/mapps/android/view/EndingAdView$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->setLogoImageInfo(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$targetView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$23;->val$targetView:Landroid/widget/ImageView;

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$23;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$23;->val$targetView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$34(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$35(Lcom/mapps/android/view/EndingAdView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/EndingAdView;->access$36(Lcom/mapps/android/view/EndingAdView;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
