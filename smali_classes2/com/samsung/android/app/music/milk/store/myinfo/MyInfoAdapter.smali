.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$IconDivider;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;,
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Companion;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/base/ItemViewable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->c:Landroid/support/v4/app/Fragment;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->c:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private final a(Landroid/text/SpannableString;II)Landroid/text/SpannableString;
    .locals 6

    .line 298
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 299
    invoke-virtual {p1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "src.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 300
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 302
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 p3, 0x11

    .line 301
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method private final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/base/ItemViewable;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    const v2, 0x7f0b0303

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    const v3, 0x7f0b0208

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getPurchaseHistory$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    const v3, 0x7f0b0305

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final a(IZLjava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/base/ItemViewable;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Ui"

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyInfo_MyInfoAdapter | getMySubscription() - subscriptionDataList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    .line 353
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    const v2, 0x7f0b02a4

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;

    const v2, 0x7f0b01bb

    .line 358
    new-instance v3, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;Ljava/util/List;ZI)V

    check-cast v3, Landroid/view/View$OnClickListener;

    .line 357
    invoke-direct {v1, v2, p2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;-><init>(IZLandroid/view/View$OnClickListener;)V

    .line 356
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    .line 370
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;

    const v2, 0x7f0b02bf

    const v3, 0x7f0b01b7

    .line 371
    new-instance v4, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$2;

    invoke-direct {v4, p0, p3, p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMySubscription$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;Ljava/util/List;ZI)V

    check-cast v4, Landroid/view/View$OnClickListener;

    .line 370
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;-><init>(IILandroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_4

    .line 382
    check-cast p3, Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 618
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, p1, 0x1

    if-gez p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_2
    check-cast p3, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;

    if-lez p1, :cond_3

    .line 383
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$IconDivider;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$IconDivider;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_1

    .line 349
    :cond_4
    :goto_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->c()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;)V
    .locals 4

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->d()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string p2, "%s,%s"

    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0209

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V
    .locals 10

    .line 251
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b03d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->g()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 253
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 254
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100659

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 262
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->d()Landroid/widget/TextView;

    move-result-object v2

    .line 263
    new-instance v3, Landroid/text/SpannableString;

    .line 266
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c()I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 267
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0d0026

    .line 264
    invoke-virtual {v0, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 263
    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c()I

    move-result v4

    .line 262
    invoke-direct {p0, v3, v4, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Landroid/text/SpannableString;II)Landroid/text/SpannableString;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->e()Landroid/widget/TextView;

    move-result-object v2

    .line 275
    new-instance v3, Landroid/text/SpannableString;

    .line 278
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d()I

    move-result v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 279
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    .line 276
    invoke-virtual {v0, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 275
    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d()I

    move-result v4

    .line 274
    invoke-direct {p0, v3, v4, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Landroid/text/SpannableString;II)Landroid/text/SpannableString;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->f()Landroid/widget/TextView;

    move-result-object p1

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    .line 287
    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b0490

    .line 288
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 289
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b()I

    move-result v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v8

    invoke-virtual {v0, v7, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    .line 286
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->d()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;)V
    .locals 11

    .line 199
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->a()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b030a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->b()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s : %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0b0399

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->c()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$4;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->g()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 211
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 212
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->h()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s : %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f100659

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->d()Landroid/widget/TextView;

    move-result-object v2

    .line 220
    new-instance v4, Landroid/text/SpannableString;

    .line 223
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d()I

    move-result v5

    new-array v8, v7, [Ljava/lang/Object;

    .line 224
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const v9, 0x7f0d0026

    .line 221
    invoke-virtual {v0, v9, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 220
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d()I

    move-result v5

    .line 219
    invoke-direct {p0, v4, v5, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Landroid/text/SpannableString;II)Landroid/text/SpannableString;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->e()Landroid/widget/TextView;

    move-result-object v2

    .line 232
    new-instance v4, Landroid/text/SpannableString;

    .line 235
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e()I

    move-result v5

    new-array v8, v7, [Ljava/lang/Object;

    .line 236
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    .line 233
    invoke-virtual {v0, v9, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 232
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e()I

    move-result v5

    .line 231
    invoke-direct {p0, v4, v5, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Landroid/text/SpannableString;II)Landroid/text/SpannableString;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;->f()Landroid/widget/TextView;

    move-result-object p1

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s %s"

    .line 244
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0b0490

    .line 245
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 246
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v6

    invoke-virtual {v0, v9, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v7

    .line 243
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;->a()Landroid/widget/TextView;

    move-result-object p2

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, "%s,%s"

    const/4 v1, 0x2

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;->a()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0b03f4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 137
    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;)V
    .locals 6

    .line 180
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$3;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->c()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s: ~%s"

    const/4 v2, 0x2

    .line 189
    new-array v2, v2, [Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->c()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->c()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/model/purchase/Subscription;->changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 188
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V
    .locals 5

    .line 170
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->a()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s >"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    array-length v0, v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0b0255

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Economy User"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0b0254

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0b0150

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b()Lcom/samsung/android/app/music/milk/store/base/ItemViewable;
    .locals 3

    .line 414
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getUsageItem$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getUsageItem$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    const v2, 0x7f0b0430

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    check-cast v0, Lcom/samsung/android/app/music/milk/store/base/ItemViewable;

    return-object v0
.end method

.method private final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/base/ItemViewable;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    const v2, 0x7f0b0296

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    const v3, 0x7f0b037b

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    const v3, 0x7f0b018d

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$getMyFavoritesAndTrends$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    const v3, 0x7f0b0157

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Ui"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyInfo_MyInfoAdapter | setData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, "Ui"

    const-string v0, "MyInfo_MyInfoAdapter | setData() - set only user name due to no account."

    .line 313
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->notifyDataSetChanged()V

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(IZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e()Z

    move-result v0

    const v1, 0x7f0b042f

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g()Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->h()Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$Divider;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b()Lcom/samsung/android/app/music/milk/store/base/ItemViewable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b()Lcom/samsung/android/app/music/milk/store/base/ItemViewable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "items[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/base/ItemViewable;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/base/ItemViewable;->a()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 115
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V

    goto/16 :goto_0

    .line 115
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.EconomyData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;)V

    goto/16 :goto_0

    .line 112
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.RadioData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :pswitch_2
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;)V

    goto/16 :goto_0

    .line 109
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.SubscriptionData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :pswitch_3
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    goto :goto_0

    .line 106
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.MyInfoUserData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :pswitch_4
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;)V

    goto :goto_0

    .line 103
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.MyInfoAdapter.NoItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :pswitch_5
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;)V

    goto :goto_0

    .line 100
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.MyInfoAdapter.CouponButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :pswitch_6
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;)V

    goto :goto_0

    .line 97
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.MyInfoAdapter.ClickableItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_7
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeader;)V

    :goto_0
    return-void

    .line 94
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.MyInfoAdapter.SubHeader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019a

    const v2, 0x7f040195

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 85
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;

    .line 86
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ivider, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 80
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;

    .line 81
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(\n      \u2026, false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 75
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;

    .line 76
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(\n      \u2026, false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 70
    :pswitch_2
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;

    const v1, 0x7f040199

    .line 71
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(\n      \u2026, false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 66
    :pswitch_3
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "fragment.activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f04019b

    .line 68
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026r_name, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p2, v1, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 63
    :pswitch_4
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;

    const v1, 0x7f040197

    .line 64
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026o_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 60
    :pswitch_5
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;

    const v1, 0x7f040194

    .line 61
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026button, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButtonViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 51
    :pswitch_6
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;

    const v1, 0x7f040193

    .line 52
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026e_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 57
    :pswitch_7
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;

    const v1, 0x7f040196

    .line 58
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ivider, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 54
    :pswitch_8
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;

    .line 55
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ivider, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 48
    :pswitch_9
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;

    const v1, 0x7f040198

    .line 49
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026header, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubHeaderViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
