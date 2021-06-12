.class Lcom/mapps/android/view/InterstitialView$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->createLogoBtn(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;

.field private final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$3;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$3;->val$root:Landroid/view/ViewGroup;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$3;)Lcom/mapps/android/view/InterstitialView;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$3;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 243
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$3;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$3;->val$root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$3;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/InterstitialView;->access$9(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mapps/android/view/InterstitialView;->setLogoImageInfo(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$3;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$9(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/InterstitialView$3$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$3$1;-><init>(Lcom/mapps/android/view/InterstitialView$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
