.class final Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$onCreateDialog$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 22
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$onCreateDialog$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
