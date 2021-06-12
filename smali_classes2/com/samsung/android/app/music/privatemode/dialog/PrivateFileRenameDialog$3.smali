.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;->a:Landroid/widget/CheckBox;

    .line 101
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(IZ)V

    return-void
.end method
