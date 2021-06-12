.class Lcom/mapps/android/view/AdVideoPlayer$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->requestSoundMuteImageLoader(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$loaderHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$31;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$31;->val$loaderHandler:Landroid/os/Handler;

    .line 2110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2115
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://advimg.ad-mapps.com/sdk/A_PLUS/Image/android/banner/logo.png"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2116
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$31;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$61(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/Bitmap;)V

    .line 2117
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2118
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$31;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$62(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2119
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$31;->val$loaderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
