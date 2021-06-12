.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;,
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;,
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$Companion;
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
.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$Companion;


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

.field private final c:I

.field private final d:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

.field private final e:I

.field private final f:I

.field private final g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;IILcom/samsung/android/app/music/milk/store/setfavorite/Footer;Z)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->c:I

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->d:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->e:I

    iput p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->f:I

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    iput-boolean p6, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->h:Z

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;IILcom/samsung/android/app/music/milk/store/setfavorite/Footer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    .line 33
    check-cast p5, Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;-><init>(ILcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;IILcom/samsung/android/app/music/milk/store/setfavorite/Footer;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->d:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    return-object p0
.end method

.method private final a(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f0b0190

    .line 182
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f0b018b

    .line 180
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :pswitch_2
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_3

    .line 165
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 157
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;->b()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f100086

    .line 100
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    const v2, 0x7f0202e5

    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Ljava/util/List;I)V

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->d()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 130
    check-cast p1, Ljava/lang/Iterable;

    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->c:I

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->f:I

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
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

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ui"

    const-string v0, "SetFavorite_SetFavoriteAdapter | setItems() - Stop due to empty list."

    .line 192
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Ui"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteAdapter | setItems() - new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$setItems$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$setItems$1;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.setfavorite.SetFavoriteData"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.setfavorite.SetFavoriteData"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, -0x1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

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
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.setfavorite.SetFavoriteData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    if-eqz p2, :cond_3

    .line 71
    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    .line 58
    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;

    .line 59
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->e:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(itemLay\u2026tResId, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->h:Z

    .line 58
    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;-><init>(Landroid/view/View;Z)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;

    .line 47
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->e:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(itemLay\u2026tResId, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->h:Z

    .line 46
    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;-><init>(Landroid/view/View;Z)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 51
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    if-eqz p2, :cond_2

    .line 54
    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(footer.\u2026tResId, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$FooterViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Try to create footer with null object."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
