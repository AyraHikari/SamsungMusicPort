.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SetFavorite_SetFavoriteFinishDialogFragment |"

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;-><init>()V

    check-cast v2, Landroid/support/v4/app/Fragment;

    :goto_0
    if-eqz v2, :cond_2

    check-cast v2, Landroid/support/v4/app/DialogFragment;

    .line 54
    invoke-virtual {v2}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.DialogFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
