.class final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;
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
        "Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;
    .locals 2

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    move-result-object v0

    return-object v0
.end method
