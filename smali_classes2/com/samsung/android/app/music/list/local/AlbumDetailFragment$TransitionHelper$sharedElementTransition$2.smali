.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/transition/Transition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/transition/Transition;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    .line 317
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;->invoke()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method
