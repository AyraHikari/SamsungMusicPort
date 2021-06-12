.class public final Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$Companion;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "recyclerViewFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 31
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V

    check-cast p1, Landroid/view/View$OnGenericMotionListener;

    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 92
    check-cast v0, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    .line 91
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    .line 96
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->d:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->c:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->c:Z

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)Z
    .locals 7

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p3

    .line 176
    sget p4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    const/4 v6, 0x1

    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    sget p4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result p4

    if-ne p3, p4, :cond_2

    .line 177
    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(I)Z

    move-result p3

    xor-int/lit8 v2, p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V

    .line 178
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->d:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->d:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    :cond_1
    return-void
.end method
