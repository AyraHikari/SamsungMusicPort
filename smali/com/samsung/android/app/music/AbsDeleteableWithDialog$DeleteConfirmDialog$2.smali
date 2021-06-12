.class Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 195
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 197
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;->a:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 198
    invoke-static {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2076"

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
