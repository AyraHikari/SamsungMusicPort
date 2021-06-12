.class Lcom/mapps/android/view/InterstitialView$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$9;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$9;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$9;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$9$2;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$9$2;->val$url:Ljava/lang/String;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/InterstitialView$9$2;)Lcom/mapps/android/view/InterstitialView$9;
    .locals 0

    .line 927
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$9$2;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$2;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 932
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$2;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$32(Lcom/mapps/android/view/InterstitialView;)V

    .line 933
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$2;->val$url:Ljava/lang/String;

    const-string v2, "opt_bridge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9$2;->this$1:Lcom/mapps/android/view/InterstitialView$9;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$9;->access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$7(Lcom/mapps/android/view/InterstitialView;)V

    .line 936
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/InterstitialView$9$2$1;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$9$2;->val$url:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/mapps/android/view/InterstitialView$9$2$1;-><init>(Lcom/mapps/android/view/InterstitialView$9$2;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 956
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 957
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView$9$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
