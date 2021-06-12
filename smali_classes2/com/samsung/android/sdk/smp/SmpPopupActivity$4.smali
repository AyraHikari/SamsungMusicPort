.class Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 440
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Z)Z

    .line 441
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "popup"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->a:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;->b:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    return-void
.end method
