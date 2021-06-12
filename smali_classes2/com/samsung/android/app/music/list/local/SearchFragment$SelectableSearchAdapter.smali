.class public Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
.super Lcom/samsung/android/app/music/search/SearchableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)V
    .locals 1

    .line 952
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)V

    .line 953
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->b:Landroid/view/View$OnClickListener;

    .line 954
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 955
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->c(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method private c(I)I
    .locals 1

    .line 1049
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, "total_count"

    .line 1050
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 6

    .line 992
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 993
    invoke-static {}, Lcom/samsung/android/app/music/list/local/SearchFragment;->d()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 995
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 999
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x15

    return p1

    .line 1002
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;
    .locals 4

    const/16 v0, 0x15

    const/16 v1, -0x3f3

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f13031f

    .line 1066
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1067
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v3, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b03b0

    .line 1068
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b033d

    .line 1069
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1067
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v1, -0x65

    if-ne p2, v1, :cond_2

    const v1, 0x7f130300

    .line 1071
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1072
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-nez p3, :cond_5

    const p3, 0x7f0400eb

    const/16 v1, -0x64

    if-ne p2, v1, :cond_3

    const p3, 0x7f0400f3

    goto :goto_2

    :cond_3
    const/16 v1, -0xc8

    if-ne p2, v1, :cond_4

    const p3, 0x7f0400f0

    .line 1081
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 1082
    invoke-virtual {v1, p3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1085
    :cond_5
    new-instance p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;Landroid/view/View;I)V

    if-ne p2, v0, :cond_6

    .line 1087
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f130139

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    const/16 p3, 0x8

    .line 1089
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f130177

    .line 1092
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1093
    iget-object p3, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100610

    .line 1094
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    :cond_6
    return-object p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_1

    .line 1025
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b0517

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_2

    .line 1027
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "%s (%d)"

    .line 1041
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b03da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1042
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 1041
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v0, "%s (%d)"

    .line 1037
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1038
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 1037
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string v0, "%s (%d)"

    .line 1033
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1034
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 1033
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V
    .locals 1

    .line 1103
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    .line 1104
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemViewType(I)I

    move-result p2

    const/16 v0, -0xc8

    if-ne p2, v0, :cond_1

    .line 1105
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f13031e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->isActionModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 0

    .line 932
    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V
    .locals 3

    .line 1112
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1113
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c()Ljava/lang/String;

    move-result-object p2

    .line 1115
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 1116
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1118
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    .line 1122
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected b(I)Z
    .locals 1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1139
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(I)Z

    move-result p1

    return p1
.end method

.method protected c(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V
    .locals 2

    .line 1127
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "image_url"

    .line 1128
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 1131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public getItemId(I)J
    .locals 4

    .line 966
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 970
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-wide v0

    .line 974
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v2, 0x2666666666666664L    # 1.05891185171661E-123

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x1999999999999998L

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_2
    const-wide v2, 0xcccccccccccccccL

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1007
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result v0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    const/16 v1, -0x3f3

    if-eq v0, v1, :cond_2

    const/16 v1, -0x65

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 960
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->initColIndex(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 961
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a:I

    return-void
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1055
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1059
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 932
    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 932
    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 932
    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->b(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 932
    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->c(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 932
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
