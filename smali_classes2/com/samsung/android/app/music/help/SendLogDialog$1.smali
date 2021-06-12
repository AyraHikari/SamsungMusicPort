.class Lcom/samsung/android/app/music/help/SendLogDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/help/SendLogDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/SendLogDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/SendLogDialog;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/help/SendLogDialog$1;->a:Lcom/samsung/android/app/music/help/SendLogDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "SendLogDialog"

    const-string p2, "UserLogManager - sendLogToServer"

    .line 26
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/help/SendLogDialog$1;->a:Lcom/samsung/android/app/music/help/SendLogDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/help/SendLogDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/UserLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/UserLogManager;->g()V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/help/SendLogDialog$1;->a:Lcom/samsung/android/app/music/help/SendLogDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/help/SendLogDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0b022c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/help/SendLogDialog$1;->a:Lcom/samsung/android/app/music/help/SendLogDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/help/SendLogDialog;->dismiss()V

    return-void
.end method
