.class final Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment$onCreateDialog$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 24
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p2

    const-string v0, "complete_set_favorite_music"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment$onCreateDialog$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->a(Landroid/content/Context;)V

    .line 26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteResetDialogFragment$onCreateDialog$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
