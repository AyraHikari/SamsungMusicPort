.class final Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic $tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;->$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;->$tag:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;
    .locals 3

    .line 19
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;->$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;->$tag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object v0

    return-object v0
.end method
