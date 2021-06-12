.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private final b:Landroid/view/View;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

.field private final e:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

.field private f:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private g:Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

.field private l:Z

.field private m:Lcom/samsung/android/app/music/model/AdInfo;

.field private n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)V
    .locals 6

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i:I

    .line 543
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 136
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 137
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    .line 138
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->l:Z

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f040040

    const/4 v4, 0x0

    .line 161
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    const v3, 0x7f130068

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    new-instance v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;)V

    .line 189
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;Lcom/samsung/android/app/music/browse/widget/ToolTipView;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c:Ljava/util/List;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    const v1, 0x7f1301c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d(Landroid/view/View;)V

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    const v1, 0x7f1301c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 271
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Landroid/view/View;)V

    goto :goto_1

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    const v1, 0x7f1301be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Landroid/view/View;)V

    goto :goto_1

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    const v1, 0x7f1301c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 264
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b03e3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 222
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    invoke-interface {v2}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p1

    .line 227
    :goto_1
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    const-string v3, "button"

    .line 228
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i:I

    return p0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13017e

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "button"

    .line 292
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 293
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$4;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0345

    .line 307
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Landroid/view/View;I)V

    .line 308
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 309
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13017e

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f02029d

    .line 314
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "button"

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 316
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$5;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02e2

    .line 322
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Landroid/view/View;I)V

    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 324
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    .line 517
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->l:Z

    .line 518
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 520
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13017e

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f02029e

    .line 329
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "button"

    .line 330
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 331
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$6;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0385

    .line 337
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Landroid/view/View;I)V

    .line 338
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 339
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13017b

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    const-string v2, "button"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 347
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Landroid/view/View;I)V

    .line 425
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 426
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->m:Lcom/samsung/android/app/music/model/AdInfo;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f130188

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    .line 529
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    if-nez v1, :cond_0

    const v1, 0x7f130187

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/model/AdInfo;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->m:Lcom/samsung/android/app/music/model/AdInfo;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 508
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public c()V
    .locals 8

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 431
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "key_browse_play_radio_show_tip"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "user already clicked playRadio button."

    .line 433
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->l:Z

    if-eqz v0, :cond_3

    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "paid user. don\'t need to show tips"

    .line 451
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 461
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h()V

    .line 462
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    if-eqz v2, :cond_5

    .line 463
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    new-instance v3, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->j:Landroid/widget/TextView;

    .line 464
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->a(Landroid/view/View;)Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    move-result-object v3

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0008

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    .line 466
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {v0, v4, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    move-result-object v0

    .line 463
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)V

    .line 469
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g()V

    return-void

    :cond_6
    :goto_0
    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "playRadio view is disabled"

    .line 457
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_1
    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "fragment is invisible"

    .line 447
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "playRadio view is null"

    .line 443
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->k:Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d()V

    :cond_0
    return v0
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 197
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g:Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g:Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 208
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g:Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g:Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    :cond_0
    return-void
.end method
