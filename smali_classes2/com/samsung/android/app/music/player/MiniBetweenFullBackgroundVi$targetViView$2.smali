.class final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;
    .locals 2

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;Landroid/content/Context;)V

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    move-result-object v1

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;->setClipToOutline(Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;->invoke()Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2$1;

    move-result-object v0

    return-object v0
.end method
