.class final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onBackPressed()V

    return-void
.end method
