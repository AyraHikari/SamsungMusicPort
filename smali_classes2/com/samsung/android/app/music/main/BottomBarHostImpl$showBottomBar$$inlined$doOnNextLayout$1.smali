.class public final Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->b:Lkotlin/jvm/functions/Function0;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->setMiniPlayerEnabled(Z)V

    const-string p1, "BottomTabHost"

    const-string p2, "mini player hide animation start"

    .line 177
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Landroid/view/ViewGroup;

    move-result-object p2

    const-string p3, "miniPlayer"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Lcom/samsung/android/app/music/main/BottomBarHostImpl;Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;-><init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
