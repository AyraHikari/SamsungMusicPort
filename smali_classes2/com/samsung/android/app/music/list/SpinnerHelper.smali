.class public final Lcom/samsung/android/app/music/list/SpinnerHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;,
        Lcom/samsung/android/app/music/list/SpinnerHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/SpinnerHelper$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

.field private c:I

.field private d:Landroid/os/Parcelable;

.field private e:[Z

.field private f:Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;

.field private final g:Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Landroid/view/View;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/SpinnerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/SpinnerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/SpinnerHelper;->a:Lcom/samsung/android/app/music/list/SpinnerHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "recyclerViewFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->i:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->j:I

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->i:Landroid/view/View;

    const p2, 0x7f130068

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.spinner)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    .line 40
    new-instance p1, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->g:Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance p2, Lcom/samsung/android/app/music/list/SpinnerHelper$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/SpinnerHelper$1;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/SpinnerHelper;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/SpinnerHelper;Landroid/os/Parcelable;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->d:Landroid/os/Parcelable;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/SpinnerHelper;)[Z
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->e:[Z

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/SpinnerHelper;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->f:Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 143
    iget v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->f:Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;

    return-void
.end method

.method public final varargs a([I)V
    .locals 10
    .param p1    # [I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "itemTextIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 159
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 63
    iget-object v4, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 64
    new-instance v1, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f04024b

    const v8, 0x1020014

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v9, v0

    .line 68
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper;Ljava/util/List;Landroid/content/Context;IILjava/util/List;)V

    .line 97
    iget v2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->j:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->setDropDownViewResource(I)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->e:[Z

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    check-cast v1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    new-instance v1, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper;[I)V

    check-cast v1, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    iget p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    iget v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setSelection(I)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    new-instance v0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->g:Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->i:Landroid/view/View;

    return-object v0
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "key_last_selected"

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    const-string p1, "key_spinner_saved_state"

    .line 132
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key_last_selected"

    .line 123
    iget v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->c:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->d:Landroid/os/Parcelable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper;->d:Landroid/os/Parcelable;

    :goto_0
    const-string v0, "key_spinner_saved_state"

    .line 126
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
