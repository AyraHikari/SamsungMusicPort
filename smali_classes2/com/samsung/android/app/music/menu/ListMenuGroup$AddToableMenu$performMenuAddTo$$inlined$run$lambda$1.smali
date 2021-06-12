.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;

.field final synthetic c:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;[J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;

    iput-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->c:[J

    .line 309
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;->c:[J

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;[J)V

    return-void
.end method
