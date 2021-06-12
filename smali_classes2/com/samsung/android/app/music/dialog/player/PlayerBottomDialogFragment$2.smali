.class Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;->b:Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "PlayerDialog"

    const-string v0, "PlayerBottomDialogFragment: onClick - negativeText"

    .line 123
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->doNegative()V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;->b:Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
