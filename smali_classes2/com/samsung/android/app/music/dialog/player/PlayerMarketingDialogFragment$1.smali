.class Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PlayerDialog"

    const-string v1, "PlayerMarketingDialogFragment: composeView: Load marketing page."

    .line 64
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V

    return-void
.end method
