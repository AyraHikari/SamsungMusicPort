.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "activity ?: return super\u2026ialog(savedInstanceState)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Ui"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteFinishDialogFragment | onCreateDialog() - activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0171

    .line 20
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0170

    .line 21
    new-instance v2, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$onCreateDialog$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/dialog/SetFavoriteFinishDialogFragment$onCreateDialog$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00cd

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "AlertDialog.Builder(acti\u2026tside(true)\n            }"

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
