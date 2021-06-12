.class public final Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private d:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field private final e:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 3

    const-string v0, "mFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x3e8

    .line 19
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->e:Landroid/support/v4/app/Fragment;

    const p1, 0x7f13015f

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.text1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f13006c

    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.text2)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f130194

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0b00c2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f130193

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 38
    new-instance p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->e:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseContentData;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->d:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->d:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->b:Landroid/widget/TextView;

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
