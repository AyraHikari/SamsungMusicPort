.class Lcom/mapps/android/view/AdView$SDKView$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2094
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 2097
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2098
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView;->access$0(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2099
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
