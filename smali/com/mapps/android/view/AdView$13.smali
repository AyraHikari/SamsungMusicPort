.class Lcom/mapps/android/view/AdView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->Initalize(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$codeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$13;->val$codeType:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$56(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$57(Lcom/mapps/android/view/AdView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/network/UrlManager;->urlImgBanner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$58(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/network/UrlManager;->urlReachBanner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$58(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    .line 284
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 285
    new-instance v3, Lcom/mapps/android/view/AdView$13$1;

    iget-object v4, p0, Lcom/mapps/android/view/AdView$13;->val$codeType:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/mapps/android/view/AdView$13$1;-><init>(Lcom/mapps/android/view/AdView$13;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    goto :goto_1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    .line 311
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
