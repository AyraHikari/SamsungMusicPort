.class public final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;,
        Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$Companion;
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
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$Companion;


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

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;)V
    .locals 0

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;)V
    .locals 4

    .line 58
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;->d()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->a()Landroid/widget/TextView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->b()Landroid/widget/TextView;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Ui"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListeningTrend_ListeningTrendAdapter | setData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;

    const v3, 0x7f0b026c

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;

    const v3, 0x7f0b026b

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;

    const v3, 0x7f0b030e

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 91
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;

    const v2, 0x7f0b030d

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

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

    .line 36
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.listeningtrend.ListeningTrendItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;)V

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.myinfo.listeningtrend.ListeningTrendAdapter.SubHeader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040198

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 29
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;

    .line 30
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026header, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 26
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;

    const v1, 0x7f040101

    .line 27
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026d_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 23
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;

    .line 24
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026header, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeaderViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
