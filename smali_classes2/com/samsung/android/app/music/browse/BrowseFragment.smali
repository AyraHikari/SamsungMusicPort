.class public final Lcom/samsung/android/app/music/browse/BrowseFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/BrowseFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/browse/BrowseFragment$Companion;

# The value of this static final field might be set in the static constructor
.field private static final p:Ljava/lang/String; = "BrowseFragment"

# The value of this static final field might be set in the static constructor
.field private static final q:Ljava/lang/String; = "1:1.2"


# instance fields
.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;

.field private f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

.field private g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

.field private i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

.field private j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

.field private k:Landroid/support/design/widget/AppBarLayout;

.field private l:Landroid/view/View;

.field private m:Lcom/samsung/android/app/music/advertise/AdPostrollController;

.field private n:Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

.field private final o:Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->a:Lcom/samsung/android/app/music/browse/BrowseFragment$Companion;

    const-string v0, "BrowseFragment"

    .line 368
    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v0, "1:1.2"

    .line 369
    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->lifeCycleLogEnabled:Z

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;-><init>(Lcom/samsung/android/app/music/browse/BrowseFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->o:Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/browse/BrowseFragment;)Lcom/samsung/android/app/music/browse/BrowseBehavior;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    return-object p0
.end method

.method private final a(Z)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/AppCompatActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 354
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ToolbarExtensionKt;->a(Landroid/support/v7/widget/Toolbar;)V

    :cond_1
    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v2, 0x1

    .line 356
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez p1, :cond_2

    const p1, 0x7f04018c

    .line 358
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 359
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_3
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/browse/BrowseFragment;)Lcom/samsung/android/app/music/browse/BrowseAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    return-object p0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 271
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "showNetworkLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_6

    const v1, 0x7f130189

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f13018a

    .line 274
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0262

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v1, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0310

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v1, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setVisibility(I)V

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->b(Z)V

    .line 309
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    new-instance v1, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 315
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBlurBackground bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const p1, 0x7f02005b

    .line 320
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 325
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 2

    const-string v0, "browseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "updateBrowseData : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)V
    .locals 0

    .line 364
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->n:Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 6

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 332
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 333
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    .line 334
    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    aput p1, v3, v4

    .line 332
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/browse/data/BrowseData;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "browseDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "updateBrowseGroups : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->q:Ljava/lang/String;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const-string v4, "browseData"

    .line 226
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "1:1.6"

    .line 229
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseFragment;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_2

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->l:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setVisibility(I)V

    .line 246
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->b(Z)V

    :cond_7
    if-nez p2, :cond_8

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setPath(Landroid/graphics/Path;)V

    .line 251
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz p1, :cond_9

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Ljava/util/List;)V

    .line 252
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz p1, :cond_a

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Ljava/util/List;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .line 215
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "hideProgress : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 263
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "showBrowseContents : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Z)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->setHasOptionsMenu(Z)V

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPostrollController;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/advertise/AdPostrollController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->m:Lcom/samsung/android/app/music/advertise/AdPostrollController;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->setLightStatusBar(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f14001d

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/view/Menu;)V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040017

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroyView(Z)V
    .locals 3

    .line 200
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView isCacheEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 201
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->e:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;

    .line 202
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a()V

    .line 203
    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a()V

    .line 205
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    .line 206
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    .line 191
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 182
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 183
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "discover_tab"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "discover_tab"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 172
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "key_browse_show_tip"

    const/4 v3, 0x1

    .line 174
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 177
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->o:Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;

    check-cast v3, Landroid/database/ContentObserver;

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->o:Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 106
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/browse/BrowseFragment;->a(Z)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->n:Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    :cond_0
    return-void

    :cond_1
    const p3, 0x7f130126

    .line 114
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById(R.id.loading_progress_bar)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->b:Landroid/widget/ProgressBar;

    const p3, 0x7f130144

    .line 115
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->c:Landroid/widget/ImageView;

    const v0, 0x7f130151

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->d:Landroid/widget/ImageView;

    .line 117
    new-instance v1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;-><init>(Lcom/samsung/android/app/music/browse/BrowseFragment;)V

    .line 118
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/browse/BrowseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 117
    check-cast v1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->e:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;

    const v1, 0x7f130152

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->k:Landroid/support/design/widget/AppBarLayout;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->k:Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_b

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 123
    new-instance v8, Lcom/samsung/android/app/music/browse/BrowseBehavior;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    .line 125
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->k:Landroid/support/design/widget/AppBarLayout;

    .line 126
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_3
    move-object v5, p2

    .line 127
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v2, v8

    .line 123
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/browse/BrowseBehavior;-><init>(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/v7/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    .line 130
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->f:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    check-cast p3, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 133
    new-instance p3, Lcom/samsung/android/app/music/browse/BrowseAdapter;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p3, v0}, Lcom/samsung/android/app/music/browse/BrowseAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    const p3, 0x7f130153

    .line 134
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 135
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity!!.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->h:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    move-object v1, p3

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;ZZILjava/lang/Object;)V

    .line 134
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 140
    new-instance p2, Lcom/samsung/android/app/music/browse/BrowseAdapter;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/browse/BrowseAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    const p2, 0x7f130154

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    .line 142
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->j:Lcom/samsung/android/app/music/browse/BrowseAdapter;

    check-cast p3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const-string v0, "activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10004f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 146
    invoke-virtual {p2, v3}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->setClipToPadding(Z)V

    .line 148
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->seslGetGoToTopBottomPadding()I

    move-result v0

    add-int/2addr v0, p3

    .line 147
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->seslSetGoToTopBottomPadding(I)V

    const/4 p3, 0x1

    .line 150
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 141
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    const p2, 0x7f130155

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->l:Landroid/view/View;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p2, "Music"

    const/4 v0, 0x3

    .line 158
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 159
    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlineCategoryExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    check-cast v4, Landroid/app/Activity;

    invoke-direct {v1, v4, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlineCategoryExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v1, v0, v3

    .line 160
    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v1, v0, p3

    .line 161
    new-instance p3, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    check-cast v1, Landroid/app/Activity;

    invoke-direct {p3, v1, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object p3, v0, v2

    .line 157
    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_a
    return-void

    .line 122
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.CoordinatorLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p_()V
    .locals 2

    .line 342
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseFragment;->p:Ljava/lang/String;

    const-string v1, " goToTop"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->i:Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->smoothScrollToPosition(I)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment;->k:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 347
    invoke-virtual {v0, v1, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    :cond_1
    return-void
.end method
