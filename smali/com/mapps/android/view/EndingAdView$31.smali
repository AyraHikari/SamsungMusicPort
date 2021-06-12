.class Lcom/mapps/android/view/EndingAdView$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$31;->val$url:Ljava/lang/String;

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1316
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$31;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$31;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1317
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1319
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/EndingAdView;->access$42(Lcom/mapps/android/view/EndingAdView;Landroid/webkit/WebView;)V

    .line 1320
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1321
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$31;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->LoadingURL(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$31;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
