.class Lcom/mapps/android/view/AdVideoPlayer$16$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer$16;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdVideoPlayer$16;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer$16;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$16$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$16;

    .line 688
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 691
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 692
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$16$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$16;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer$16;->access$0(Lcom/mapps/android/view/AdVideoPlayer$16;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$28(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$16$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$16;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer$16;->access$0(Lcom/mapps/android/view/AdVideoPlayer$16;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$29(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 694
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
