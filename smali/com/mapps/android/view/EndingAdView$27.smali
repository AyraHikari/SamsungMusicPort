.class Lcom/mapps/android/view/EndingAdView$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->sspLanding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$27;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1169
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$27;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$39(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 1170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$27;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1173
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$27;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mapps/android/view/EndingAdView;->access$40(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
