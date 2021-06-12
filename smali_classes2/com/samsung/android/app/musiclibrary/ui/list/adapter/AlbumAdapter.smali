.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->a:I

    return-void
.end method


# virtual methods
.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 4

    .line 46
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 47
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text1Index:I

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text1Index:I

    .line 49
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text2Index:I

    if-eq v0, v1, :cond_1

    .line 53
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text2Index:I

    .line 54
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text3Index:I

    if-eq v0, v1, :cond_2

    .line 58
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    const-string v0, "(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->text3Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 30
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->a:I

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 35
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 37
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 38
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_1
    return-object p1
.end method
