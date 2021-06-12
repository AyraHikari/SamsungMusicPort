.class Lcom/mapps/android/view/InterstitialView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->clickLanding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 682
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$21(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v1, v0}, Lcom/mapps/android/view/InterstitialView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 686
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 687
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
