.class final Lcom/facebook/share/internal/LikeActionController$5;
.super Lcom/facebook/AccessTokenTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 1

    .line 389
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p2, :cond_0

    .line 398
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    rem-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Lcom/facebook/share/internal/LikeActionController;->access$302(I)I

    const-string p2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 402
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "OBJECT_SUFFIX"

    .line 403
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 404
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 410
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$500()Lcom/facebook/internal/FileLruCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache;->clearCache()V

    :cond_0
    const/4 p1, 0x0

    const-string p2, "com.facebook.sdk.LikeActionController.DID_RESET"

    .line 412
    invoke-static {p1, p2}, Lcom/facebook/share/internal/LikeActionController;->access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method
