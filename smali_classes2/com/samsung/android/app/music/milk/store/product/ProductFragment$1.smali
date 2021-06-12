.class Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/product/ProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string p1, "ProductFragment"

    const-string v0, "onFeatureChanged in"

    .line 197
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->b(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProductFragment"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
