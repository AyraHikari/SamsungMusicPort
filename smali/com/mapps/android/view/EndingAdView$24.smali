.class Lcom/mapps/android/view/EndingAdView$24;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->createLogoBtn(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$24;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 966
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$24;)Lcom/mapps/android/view/EndingAdView;
    .locals 0

    .line 966
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView$24;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 970
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 971
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$24;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$24;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$34(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/mapps/android/view/EndingAdView;->setLogoImageInfo(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$24;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$34(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/EndingAdView$24$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$24$1;-><init>(Lcom/mapps/android/view/EndingAdView$24;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
