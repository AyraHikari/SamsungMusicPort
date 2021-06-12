.class Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z

    .line 208
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->a:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    return-void
.end method
