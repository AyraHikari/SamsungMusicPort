.class public final Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$DividerViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Divider;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Companion;
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
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Companion;


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;)V
    .locals 4

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s,%s"

    const/4 v2, 0x2

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    .line 116
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const p2, 0x7f0b0209

    .line 117
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 114
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;->d()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 73
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;->d()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const-string v0, "viewHolder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 78
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const-string v0, "viewHolder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;)V
    .locals 8

    .line 85
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;->b()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->b()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v2, 0x7f0b02ad

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.next_payment_date)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 87
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->c()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s: %s"

    const/4 v4, 0x2

    .line 92
    new-array v5, v4, [Ljava/lang/Object;

    const v7, 0x7f0b024d

    .line 93
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 94
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 91
    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->d()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s: %s"

    .line 97
    new-array v5, v4, [Ljava/lang/Object;

    const v7, 0x7f0b02d8

    .line 98
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 96
    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;->f()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->e()Landroid/widget/TextView;

    move-result-object p2

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s,%s"

    .line 103
    new-array v2, v4, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v6

    const p1, 0x7f0b0209

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 102
    array-length p1, v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;)V
    .locals 3

    const-string v0, "reservation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;

    .line 130
    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 202
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/base/ItemViewable;

    .line 131
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/base/ItemViewable;->a()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/milk/store/base/ItemViewable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "_items[position]"

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

    .line 40
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Button;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.subscriptions.detail.MySubscriptionDetailAdapter.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$Reservation;)V

    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.subscriptions.detail.MySubscriptionDetailAdapter.Reservation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :pswitch_2
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ListItem;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.subscriptions.detail.MySubscriptionDetailAdapter.ListItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401a9

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 33
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;

    .line 34
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026t_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 30
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$DividerViewHolder;

    const v1, 0x7f040195

    .line 31
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ivider, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$DividerViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 27
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;

    const v1, 0x7f0401a8

    .line 28
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026button, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ButtonViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 24
    :pswitch_2
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;

    const v1, 0x7f0401aa

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026vation, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ReservationViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 21
    :pswitch_3
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;

    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026t_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
