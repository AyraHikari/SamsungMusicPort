.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$2;
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
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    return-void
.end method
