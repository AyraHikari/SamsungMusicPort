.class Lcom/mapps/android/view/AdVideoPlayer$16;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->soundMute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 682
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$16;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 685
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 686
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/drawable/Drawable;)V

    .line 687
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 688
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    sget-object v0, Lcom/mz/common/ui/UILoad$ImageName;->c:Ljava/lang/String;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$16$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$16$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$16;)V

    invoke-static {p1, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$30(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
