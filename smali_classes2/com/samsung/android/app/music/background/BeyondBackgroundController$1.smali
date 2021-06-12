.class final Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;",
        "Landroid/graphics/Rect;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 759
    check-cast p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;->invoke(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;Landroid/graphics/Rect;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bounds"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Landroid/graphics/Rect;Z)V

    return-void
.end method
