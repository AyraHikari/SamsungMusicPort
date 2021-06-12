.class Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 383
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z

    .line 384
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->a:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->b:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    return-void
.end method
