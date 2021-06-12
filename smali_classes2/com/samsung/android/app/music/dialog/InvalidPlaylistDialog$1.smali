.class Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a()V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
