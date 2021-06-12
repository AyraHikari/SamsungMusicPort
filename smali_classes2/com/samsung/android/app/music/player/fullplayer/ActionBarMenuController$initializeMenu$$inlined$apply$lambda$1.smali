.class final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
