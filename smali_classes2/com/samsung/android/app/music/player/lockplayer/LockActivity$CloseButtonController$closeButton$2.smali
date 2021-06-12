.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->$rootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->$rootView:Landroid/view/View;

    const v1, 0x7f130335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
