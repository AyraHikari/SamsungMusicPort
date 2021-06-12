.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;
.super Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$Companion;


# instance fields
.field private final i:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;

.field private final j:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->j:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 621
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->i:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;

    .line 636
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 637
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->j:Lcom/samsung/android/app/music/list/local/HeartFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->i:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$fragmentLifeCycleCallbacks$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)Lcom/samsung/android/app/music/list/local/HeartFragment;
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->j:Lcom/samsung/android/app/music/list/local/HeartFragment;

    return-object p0
.end method


# virtual methods
.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, -0x3f1

    if-ne v0, v1, :cond_0

    .line 644
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "holder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    .line 648
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method
