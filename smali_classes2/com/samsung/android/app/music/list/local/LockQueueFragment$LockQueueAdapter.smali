.class public final Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/LockQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockQueueAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    .line 219
    iget-object p3, p3, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0400e1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string p1, "run {\n                  \u2026 false)\n                }"

    .line 218
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(JI)V
    .locals 0

    int-to-long p1, p3

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(JI)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->h()J

    move-result-wide v0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a:Z

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 239
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->getItemCpAttrs(I)I

    move-result p1

    const v0, 0x80002

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 244
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
