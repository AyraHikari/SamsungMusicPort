.class Lcom/mapps/android/view/AdVideoPlayer$22;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->createLogo(Landroid/widget/RelativeLayout;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$22;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 924
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$22;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 0

    .line 924
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer$22;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 927
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 928
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$22;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 929
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$22;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$42(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$22$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$22$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$22;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
