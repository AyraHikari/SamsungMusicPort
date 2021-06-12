.class public final Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Companion;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;)V
    .locals 1

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->e:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;)Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->e:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->isActionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0400e6

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string p1, "LayoutInflater.from(frag\u2026rent, false\n            )"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->e:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;)V

    :cond_0
    return-void

    .line 43
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    const-string p1, "SMUSIC-PlaylistAdapter"

    const-string p2, "onBindViewHolder() but cursor is null."

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;I)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->h()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 56
    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->f:Z

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 59
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 64
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->f:Z

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->j()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->safeNotifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(I)I
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
