.class final Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckBoxAnimatorListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V

    .line 660
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->safeNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->F()Z

    move-result p1

    if-nez p1, :cond_0

    .line 666
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V

    .line 667
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->safeNotifyDataSetChanged()V

    :cond_0
    return-void
.end method
