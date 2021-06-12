.class final Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$1;->invoke(Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "drawable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setFraction(F)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
