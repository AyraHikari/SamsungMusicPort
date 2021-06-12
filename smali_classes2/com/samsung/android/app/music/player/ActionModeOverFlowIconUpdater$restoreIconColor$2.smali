.class final Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;->this$0:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;->this$0:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
