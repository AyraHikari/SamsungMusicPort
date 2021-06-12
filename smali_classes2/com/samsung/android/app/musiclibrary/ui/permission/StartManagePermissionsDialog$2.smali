.class Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->b:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->b:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->a:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->b:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "args_finish_activity"

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
