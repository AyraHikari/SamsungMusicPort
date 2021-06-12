.class public final Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)V
    .locals 1

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->c:I

    .line 22
    iput v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->d:I

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)V

    return-void
.end method

.method private final b(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V
    .locals 6

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v0

    .line 80
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v4, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v4, -0x1

    :goto_0
    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v0, 0x3ebd70a4    # 0.37f

    .line 85
    :goto_1
    iget-object v5, p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 86
    :cond_3
    iget-object v5, p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 88
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 89
    :cond_6
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->more:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->isActionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-ne v4, v3, :cond_8

    .line 94
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v4

    .line 96
    :cond_8
    invoke-static {v4}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 99
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->e:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    goto :goto_2

    .line 102
    :cond_a
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 103
    iget v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    .line 99
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private final c(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V
    .locals 2

    .line 113
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 114
    iget v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->c:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    .line 119
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130163

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 120
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a(Landroid/widget/TextView;)V

    .line 122
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;

    .line 39
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v2, 0x7f0400e8

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p3, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string p1, "LayoutInflater.from(frag\u2026_two_line, parent, false)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_0
    invoke-direct {v0, v1, p3, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method protected a(JI)V
    .locals 0

    int-to-long p1, p3

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(JI)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V

    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->c(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->h()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 59
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->context:Landroid/content/Context;

    .line 61
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 68
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->e:Z

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->e:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->c:I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->d:I

    :cond_1
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
