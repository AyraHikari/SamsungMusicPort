.class Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseTopChartItemViewHolder"
.end annotation


# static fields
.field static final e:[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field private final f:Landroid/support/v4/app/Fragment;

.field private final g:I

.field private h:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field private i:I

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 160
    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    .line 163
    sget-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    const/4 v1, 0x0

    const v2, 0x7f130196

    aput v2, v0, v1

    .line 164
    sget-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    const/4 v1, 0x1

    const v2, 0x7f130197

    aput v2, v0, v1

    .line 165
    sget-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    const/4 v1, 0x2

    const v2, 0x7f130198

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;I)V
    .locals 3

    .line 169
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->j:Z

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->k:Landroid/os/Handler;

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->f:Landroid/support/v4/app/Fragment;

    .line 171
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 172
    iput p3, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->g:I

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    packed-switch p3, :pswitch_data_0

    .line 231
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type !! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :pswitch_0
    new-instance p3, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const p3, 0x7f13015d

    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 191
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$3;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x0

    .line 200
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 201
    sget-object v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->e:[I

    aget v1, v1, p3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$4;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f130197

    .line 212
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100387

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 217
    invoke-virtual {p2, v0, p1, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 221
    :pswitch_1
    new-instance p3, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$5;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$5;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0xbb9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;
    .locals 0

    .line 129
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 16

    move-object/from16 v0, p0

    .line 285
    iget-object v1, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f130195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    iget-object v2, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f13015d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 287
    invoke-virtual {v2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 289
    iget-object v2, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k()Ljava/util/List;

    move-result-object v1

    .line 293
    iget v2, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 294
    iget v4, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 295
    iget v5, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 296
    iget v7, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    const/4 v8, 0x3

    add-int/2addr v7, v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 297
    iget v7, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    add-int/2addr v7, v8

    const/4 v9, 0x0

    const/16 v10, 0xc

    if-lt v7, v10, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    add-int/2addr v7, v8

    :goto_0
    iput v7, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->i:I

    const/4 v7, 0x4

    .line 299
    new-array v7, v7, [Landroid/net/Uri;

    .line 300
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v7, v9

    .line 301
    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v7, v3

    .line 302
    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v7, v6

    .line 303
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v7, v8

    .line 305
    iget-object v1, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v7}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;)V

    .line 308
    iget-object v1, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f130196

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    iget-object v3, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f130197

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 310
    iget-object v6, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f130198

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f130199

    .line 312
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f130070

    .line 313
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f13019a

    .line 314
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f130175

    .line 315
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 317
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->h()I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    .line 322
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 323
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 324
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 327
    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->h()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    .line 332
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 334
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 335
    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 337
    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->h()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    const/4 v2, 0x0

    .line 342
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;I)V

    const/16 v1, 0x82

    .line 343
    invoke-static {v3, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;I)V

    const/16 v1, 0x104

    .line 344
    invoke-static {v6, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->a()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Landroid/os/Handler;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 249
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type !! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :pswitch_0
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040038

    .line 241
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;I)V

    return-object v1

    .line 244
    :pswitch_1
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    .line 246
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0xbb9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseContentData;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 3

    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 256
    iget v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->g:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 279
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type !! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :pswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->j:Z

    if-eqz p1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->a()V

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->k:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 261
    iput v1, p1, Landroid/os/Message;->what:I

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->k:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->j:Z

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f13013a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 270
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f1000b6

    .line 274
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b:Landroid/widget/ImageView;

    const v2, 0x7f0202e5

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xbb9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
