.class final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/support/v7/widget/Toolbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    const v1, 0x7f130285

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;->invoke()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method
