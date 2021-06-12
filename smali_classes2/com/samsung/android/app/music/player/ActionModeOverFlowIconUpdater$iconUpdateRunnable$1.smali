.class final Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;->a:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;->a:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;->a:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->b(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;->a:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->c(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public synthetic run()V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;->a()V

    return-void
.end method
