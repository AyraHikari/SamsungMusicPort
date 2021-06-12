.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 3

    .line 327
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 334
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 335
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_1

    :cond_1
    const v1, 0xff0001

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0003

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 357
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 360
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 366
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    .line 368
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 369
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 373
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 377
    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 332
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setListShown(ZZ)V
    .locals 4

    .line 284
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 285
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 288
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 291
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 294
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 295
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 294
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 296
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 300
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 302
    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 306
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 306
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 309
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 308
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 311
    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 312
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 314
    :goto_1
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 286
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 226
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 227
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 218
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 219
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 210
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 95
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0002

    .line 102
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    .line 104
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x11

    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0003

    .line 118
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 120
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    .line 121
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setId(I)V

    const/4 p1, 0x0

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 129
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 157
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 160
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 161
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 236
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 237
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 244
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    return-void

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t be used with a custom content view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 185
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    :cond_2
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 262
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 202
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 203
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
