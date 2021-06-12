.class Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "PlayerDialog"

    const-string p2, "PlayerMessageDialogFragment: onClick - positive"

    .line 55
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->doPositive()V

    return-void
.end method
