.class public final Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

.field private f:Landroid/database/Cursor;

.field private g:I

.field private h:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "recyclerViewFragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "recyclerViewFragment.activity!!.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a:Landroid/content/Context;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->b:I

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->g:I

    .line 42
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    return-object p0
.end method

.method private final a(Landroid/database/Cursor;)V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    if-eqz p1, :cond_11

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_e

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "itemViewHolders[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    .line 124
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v2, "UiList"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".CardViewManager updateCardViewItem | position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | columnCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".columnCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-interface {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 130
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f()Landroid/view/View;

    move-result-object v4

    .line 133
    sget v5, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v6, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v5, v6

    .line 131
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 136
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 138
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a:Landroid/content/Context;

    .line 139
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    .line 137
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 142
    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 143
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c()Landroid/view/View;

    move-result-object v4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c()Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 151
    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->g()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->g()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->h()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 153
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->h()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->h()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;

    invoke-direct {v4, p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_a
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 163
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 171
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v4, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    invoke-interface {v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    :cond_d
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 174
    :cond_e
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->g:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    if-eqz p1, :cond_11

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez p1, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->g:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    invoke-interface {p1, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    if-nez p1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_10
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    .line 178
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->g:I

    .line 179
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    :cond_11
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->f:Landroid/database/Cursor;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    const/4 p1, 0x1

    .line 101
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->a(Z)V

    goto :goto_0

    .line 106
    :cond_4
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->g:I

    .line 107
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    :goto_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V
    .locals 4

    const-string v0, "cardViewable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".CardViewManager setCardViewable() | cardViewable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 67
    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string v2, "cardViewHolder!!.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addViewIgnoreParentPadding(Landroid/view/View;)V

    const/16 v1, -0x7d0

    .line 70
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string v3, "cardViewHolder!!.itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->b()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 74
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->b()I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    invoke-interface {p1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->a(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    move-result-object v2

    const-string v3, "cardViewable.onCreateIte\u2026iewHolder!!.itemView, it)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$loaderCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->setViewEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    .line 85
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->setViewEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
