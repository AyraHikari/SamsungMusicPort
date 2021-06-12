.class final Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->a(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/support/constraint/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "artist"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/constraint/Group;->setVisibility(I)V

    :cond_1
    return-void
.end method
