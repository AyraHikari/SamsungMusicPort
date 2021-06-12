.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpotifyDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;)V
    .locals 1

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    .line 196
    iget-object v0, p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->k:Ljava/lang/String;

    .line 197
    iget-boolean p1, p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->b:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 268
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->context:Landroid/content/Context;

    .line 278
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 295
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "_id"

    .line 297
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 298
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 299
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 305
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;)Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->g:Z

    return p0
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "artist"

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/database/Cursor;)Z
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "album"

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;
    .locals 2
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->j:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040139

    goto :goto_0

    :cond_0
    const v0, 0x7f040023

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 232
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;I)V
    .locals 2

    .line 246
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 248
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 249
    iget-object v0, p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object p1, p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;->textView2:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->text2Index:I

    .line 251
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->l:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->l:I

    :cond_0
    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 189
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 259
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->c(Landroid/database/Cursor;)Z

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
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->g:Z

    .line 260
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
