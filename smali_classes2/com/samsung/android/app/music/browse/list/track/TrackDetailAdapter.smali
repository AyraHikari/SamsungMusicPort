.class public Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;,
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;,
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;,
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;,
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;,
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    if-ltz p2, :cond_2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->e:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->e:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;

    iget v0, v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;->a(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->e:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V
    .locals 4

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b0080

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getGenre()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b014e

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricist()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b0461

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricist()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getComposer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b045f

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getComposer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArranger()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b045e

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArranger()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasLyric()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b0192

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isPlayable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b023b

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isDownloadable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b023e

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b00ae

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasMusicVideo()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const v2, 0x7f0b023f

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->b:Z

    if-eqz p1, :cond_9

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    const/4 v1, 0x3

    const v2, 0x7f0b00aa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->b:Z

    .line 158
    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->c:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    iget p1, p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->a:I

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 99
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    iget p2, p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->c:Z

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    .line 96
    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    iget p2, p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    check-cast p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;

    .line 82
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    iget v1, v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 87
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->getItemViewType(I)I

    move-result p2

    if-nez p2, :cond_1

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040266

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 67
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;

    .line 68
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V

    goto :goto_0

    .line 63
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;

    const v1, 0x7f04003d

    .line 64
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V

    goto :goto_0

    .line 59
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;

    const v1, 0x7f04003e

    .line 60
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V

    goto :goto_0

    .line 55
    :pswitch_2
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;

    const v1, 0x7f040265

    .line 56
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V

    goto :goto_0

    .line 51
    :pswitch_3
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;

    .line 52
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
