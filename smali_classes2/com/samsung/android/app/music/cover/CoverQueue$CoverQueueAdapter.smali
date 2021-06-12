.class final Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CoverQueueAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
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
.field private final a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 255
    invoke-static {p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->a(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .locals 2

    .line 264
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    iget-object p3, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->context:Landroid/content/Context;

    .line 265
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object p2
.end method

.method a(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->b:I

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 1

    .line 271
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    .line 272
    iget v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->b:I

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
