.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    .line 1125
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 1128
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setActionModeEnabled(Z)V

    return-void
.end method
