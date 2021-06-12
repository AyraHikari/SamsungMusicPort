.class Lcom/mapps/android/view/EndingAdView$24$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$24$1$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/mapps/android/view/EndingAdView$24$1$1;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$24$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$24$1$1$1;->this$3:Lcom/mapps/android/view/EndingAdView$24$1$1;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 982
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 983
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$24$1$1$1;->this$3:Lcom/mapps/android/view/EndingAdView$24$1$1;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView$24$1$1;->access$1(Lcom/mapps/android/view/EndingAdView$24$1$1;)Lcom/mapps/android/view/EndingAdView$24$1;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView$24$1;->access$0(Lcom/mapps/android/view/EndingAdView$24$1;)Lcom/mapps/android/view/EndingAdView$24;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView$24;->access$0(Lcom/mapps/android/view/EndingAdView$24;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/network/UrlManager;->getOptInoutUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 982
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 984
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$24$1$1$1;->this$3:Lcom/mapps/android/view/EndingAdView$24$1$1;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$24$1$1;->access$1(Lcom/mapps/android/view/EndingAdView$24$1$1;)Lcom/mapps/android/view/EndingAdView$24$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$24$1;->access$0(Lcom/mapps/android/view/EndingAdView$24$1;)Lcom/mapps/android/view/EndingAdView$24;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$24;->access$0(Lcom/mapps/android/view/EndingAdView$24;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
